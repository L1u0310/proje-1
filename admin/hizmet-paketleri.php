<?php
require_once('header.php');

if (isset($_GET['deleteId'])) {
    $id = $_GET['deleteId'];
    $paketSil = $db->prepare('delete from hizmetpaketi where id=?');
    $paketSil->execute(array($id));

    if ($paketSil->rowCount()) {
        echo '<meta http-equiv="refresh" content="0; url=hizmet-paketleri.php"><script>alert("Paket Silindi")</script>';
    } else {
        echo '<meta http-equiv="refresh" content="0; url=hizmet-paketleri.php"><script>alert("Hata Oluştu")</script>';
    }
} else if (isset($_GET['updateId'])) {
    $id = $_GET['updateId'];
    $paketSec = $db->prepare('select * from hizmetpaketi where id=?');
    $paketSec->execute(array($id));
    $paketSecSatir = $paketSec->fetch();

    echo '
    <script>
    document.addEventListener("DOMContentLoaded", function() {
      $("#myModal").modal("show");
    });
    </script>
    ';
}

?>

<!-- Hizmet Paketi Ekle Start -->
<section id="hizmetPaketi" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h4>Hizmet Paketleri</h4>
            </div>
            <div class="col-md-6 text-right">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#paketekle">
                    Yeni Paket Ekle
                </button>

                <!-- Modal -->
                <div class="modal fade" id="paketekle" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="paketekle" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="paketekle">Hizmet Paketi Ekle</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="" method="post" class="form-row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <input type="text" name="baslik" placeholder="Paket Adı Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="fiyat" placeholder="Ücret Bilgisi Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="ozellik1" placeholder="1. Özellik Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="ozellik2" placeholder="2. Özellik Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="ozellik3" placeholder="3. Özellik Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="ozellik4" placeholder="4. Özellik Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="ozellik5" placeholder="5. Özellik Girin" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" value="Kaydet" class="btn btn-success" name="paketKaydet">
                                        </div>
                                    </div>
                                </form>

                                <?php
                                if (isset($_POST['paketKaydet'])) {
                                    $baslik = $_POST['baslik'];
                                    $fiyat = $_POST['fiyat'];
                                    $ozellik1 = $_POST['ozellik1'];
                                    $ozellik2 = $_POST['ozellik2'];
                                    $ozellik3 = $_POST['ozellik3'];
                                    $ozellik4 = $_POST['ozellik4'];
                                    $ozellik5 = $_POST['ozellik5'];

                                    $paketKaydet = $db->prepare('insert into hizmetpaketi(baslik,fiyat,ozellik1,ozellik2,ozellik3,ozellik4,ozellik5) values(?,?,?,?,?,?,?)');
                                    $paketKaydet->execute(array($baslik, $fiyat, $ozellik1, $ozellik2, $ozellik3, $ozellik4, $ozellik5));

                                    if ($paketKaydet->rowCount()) {
                                        echo '<meta http-equiv="refresh" content="0; url=hizmet-paketleri.php"><script>alert("Hizmet Paketi Eklendi")</script>';
                                    } else {
                                        echo '<meta http-equiv="refresh" content="0; url=hizmet-paketleri.php"><script>alert("Hata Oluştu")</script>';
                                    }
                                }
                                ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Başlık</th>
                            <th>Fiyat</th>
                            <th>Özellik 1</th>
                            <th>Özellik 2</th>
                            <th>Özellik 3</th>
                            <th>Özellik 4</th>
                            <th>Özellik 5</th>
                            <th>Düzenle</th>
                            <th>Sil</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $hizmetpaketiList = $db->prepare('select * from hizmetpaketi order by id desc');
                        $hizmetpaketiList->execute();

                        if ($hizmetpaketiList->rowCount()) {
                            foreach ($hizmetpaketiList as $hizmetpaketiListSatir) {
                        ?>
                                <tr>
                                    <td><?php echo $hizmetpaketiListSatir['baslik']; ?></td>
                                    <td><?php echo $hizmetpaketiListSatir['fiyat']; ?></td>
                                    <td><?php echo $hizmetpaketiListSatir['ozellik1']; ?></td>
                                    <td><?php echo $hizmetpaketiListSatir['ozellik2']; ?></td>
                                    <td><?php echo $hizmetpaketiListSatir['ozellik3']; ?></td>
                                    <td><?php echo $hizmetpaketiListSatir['ozellik4']; ?></td>
                                    <td><?php echo $hizmetpaketiListSatir['ozellik5']; ?></td>
                                    <td><a href="hizmet-paketleri.php?updateId=<?php echo $hizmetpaketiListSatir['id']; ?>" class="btn btn-warning">Düzenle</a></td>
                                    <td><a href="hizmet-paketleri.php?deleteId=<?php echo $hizmetpaketiListSatir['id']; ?>" class="btn btn-danger">Sil</a></td>
                                </tr>
                        <?php
                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!-- Hizmet Paketi Ekle End -->

<!-- Hizmet Paketi Güncelle Modal Start -->
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModal"><?php echo $paketSecSatir['baslik']; ?> Plan Güncelle</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-group">
                        <input type="text" name="baslik" value="<?php echo $paketSecSatir['baslik']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="fiyat" placeholder="<?php echo $paketSecSatir['fiyat']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozellik1" placeholder="<?php echo $paketSecSatir['ozellik1']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozellik2" placeholder="<?php echo $paketSecSatir['ozellik2']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozellik3" placeholder="<?php echo $paketSecSatir['ozellik3']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozellik4" placeholder="<?php echo $paketSecSatir['ozellik4']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozellik5" placeholder="<?php echo $paketSecSatir['ozellik5']; ?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="id" value="<?php echo $paketSecSatir['id']; ?>">
                        <input type="submit" value="güncelle" class="btn btn-success" name="paketGuncelle">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php 
if(isset($_POST['paketGuncelle'])){
    $baslik = $_POST['baslik'];
    $fiyat = $_POST['fiyat'];
    $ozellik1 = $_POST['ozellik1'];
    $ozellik2 = $_POST['ozellik2'];
    $ozellik3 = $_POST['ozellik3'];
    $ozellik4 = $_POST['ozellik4'];
    $ozellik5 = $_POST['ozellik5'];
    $id = $_POST['id'];
    $paketDuzenle = $db ->prepare('update hizmetpaketi set baslik=?, fiyat=?, ozellik1=?,ozellik2=?,ozellik3=?,ozellik4=?,ozellik5=? where id=?');
    $paketDuzenle -> execute(array($baslik, $fiyat, $ozellik1,$ozellik2,$ozellik3,$ozellik4,$ozellik5,$id));
   
   
    if ($paketDuzenle->rowCount()) {
        echo '<meta http-equiv="refresh" content="0; url=hizmet-paketleri.php"><script>alert("Hizmet Paketi güncellendi")</script>';
    } else {
        echo '<meta http-equiv="refresh" content="0; url=hizmet-paketleri.php"><script>alert("Hata Oluştu")</script>';
    }


}
?>
<!-- Hizmet Paketi Güncelle Modal End -->

<?php require_once('footer.php'); ?>