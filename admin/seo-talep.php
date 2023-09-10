<?php
require_once('header.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $puan = $db->prepare('select * from seotalep where id=?');
    $puan->execute(array($id));
    $puanSatir = $puan->fetch();

    echo '
    <script>
    document.addEventListener("DOMContentLoaded", function() {
      $("#myModal").modal("show");
    });
    </script>
    ';
}

?>

<!-- Seo Talep List Start -->
<section id="seoTalep" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h4>Seo Talepleri Listesi</h4>
            </div>
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Url</th>
                            <th>E-Posta</th>
                            <th class="text-center">Seo Puan</th>
                            <th>Değerlendir</th>
                            <th>Sil</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $seoTalepList = $db->prepare('select * from seotalep order by id desc');
                        $seoTalepList->execute();

                        if ($seoTalepList->rowCount()) {
                            foreach ($seoTalepList as $seoTalepListSatir) {
                        ?>
                                <tr>
                                    <td><a href="<?php echo $seoTalepListSatir['weburl']; ?>" target="_blank"><?php echo $seoTalepListSatir['weburl']; ?></a></td>
                                    <td><?php echo $seoTalepListSatir['eposta']; ?></td>
                                    <td class="text-center"><?php echo $seoTalepListSatir['puan']; ?></td>
                                    <td>
                                        <a href="seo-talep.php?id=<?php echo $seoTalepListSatir['id']; ?>" class="btn btn-warning">Değerlendir</a>
                                    </td>
                                    <td></td>
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
<!-- Seo Talep List End -->

<!-- Puan Değerlendirme Modal Start -->
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModal"><?php echo $puanSatir['weburl']; ?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post" class="form-row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <input type="text" name="puanlandı" placeholder="Puan Ver" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <input type="submit" value="Puanla" class="btn btn-success" name="puanla">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php
if(isset($_POST['puanla'])){
    $puanlandı = $_POST['puanlandı'];
    $puanver = $db -> prepare('update seotalep set puan=? where id=?');
    $puanver -> execute(array($puanlandı,$id));


    if($puanver -> rowCount()){
       echo '<meta http-equiv="refresh" content="0; url=seo-talep.php"> <script>alert("puan güncellendi")</script>';
    } else{
       echo '<meta http-equiv="refresh" content="0; url=seo-talep.php"> <script>alert("puan güncellenemedi")</script>'; 
    }
}
?>
<!-- Puan Değerlendirme Modal End -->

<?php require_once('footer.php'); ?>