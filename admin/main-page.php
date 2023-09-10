<?php require_once('header.php'); ?>

<!-- Ana Sayfa Banner Section Start -->
<section id="anasayfaBanner" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h4>Ana Sayfa Banner Ayarları</h4>
            </div>
            <div class="col-12">
                <form method="post" class="form-row" enctype="multipart/form-data">
                    <div class="col-12">
                        <div class="form-group">
                            <textarea name="bannermetin"></textarea>
                            <script>
                                CKEDITOR.replace('bannermetin', {
                                    height: 150
                                });
                            </script>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Buton Linkini Ekleyin</label>
                            <input type="url" name="bannerbutonlink" class="form-control" placeholder="Ör: https://www.aribilgi.com/php-dersleri">
                        </div>
                    </div>
                    <div class="col-md-3 my-auto">
                        <div class="form-group">
                            <label>Banner Görseli Ekleyin</label>
                            <input type="file" name="bannergorsel">
                        </div>
                    </div>
                    <div class="col-md-3 my-auto">
                        <div class="form-group">
                            <label>Görsel Açıklaması (Max.90 Karakter)</label>
                            <input type="text" name="bannergorselalt" placeholder="Ör: Arı Bilişim Banner Görseli" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-2 my-auto text-right">
                        <div class="form-group">
                            <input type="submit" value="Kaydet" class="btn btn-success" name="bannerKaydet">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Ana Sayfa Banner Section Start -->

<!-- Ana Sayfa Banner Kaydetme Start -->
<?php
if (isset($_POST['bannerKaydet'])) {
    $bannermetin = $_POST['bannermetin'];
    $bannerbutonlink = $_POST['bannerbutonlink'];
    $bannergorsel = '../assets/img/' . $_FILES['bannergorsel']['name'];
    $bannergorselalt = $_POST['bannergorselalt'];

    if(move_uploaded_file($_FILES['bannergorsel']['tmp_name'],$bannergorsel)){
        $bannerKaydet = $db -> prepare('insert into anasayfabanner(bannermetin,bannerbutonlink,bannergorsel,bannergorselalt) values(?,?,?,?)');
        $bannerKaydet -> execute(array($bannermetin,$bannerbutonlink,$bannergorsel,$bannergorselalt));

        if($bannerKaydet -> rowCount()){
            echo '<meta http-equiv="refresh" content="0; url=main-page.php"><script>alert("Banner Kaydı Başarılı")</script>';
        } else {
            echo '<meta http-equiv="refresh" content="0; url=main-page.php"><script>alert("Hata Oluştu")</script>';
        }
    }
}
?>
<!-- Ana Sayfa Banner Kaydetme End -->

<?php require_once('footer.php'); ?>