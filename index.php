<?php require_once('header.php'); ?>

<!-- Main Banner Section Content Start -->
<?php
$mainBanner = $db->prepare('select * from anasayfaBanner order by id desc limit 1');
$mainBanner->execute();
$mainBannerSatir = $mainBanner->fetch();
?>
<!-- Main Banner Section Content End -->

<!-- Main Banner Section Start -->
<section id="mainBanner">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-6 my-auto">
                <?php echo $mainBannerSatir['bannermetin']; ?>
                <a href="<?php echo $mainBannerSatir['bannerbutonlink']; ?>" target="_blank"><button class="btn bg-mor text-white">Tanıtım Videosu</button></a>
            </div>
            <div class="col-md-6 my-auto text-center">
                <img src="<?php echo substr($mainBannerSatir['bannergorsel'], 3); ?>" alt="<?php echo $mainBannerSatir['bannergorselalt']; ?>" class="w-75">
            </div>
        </div>
    </div>
</section>
<!-- Main Banner Section End -->

<!-- Services Section Start -->
<section id="services" class="py-5 bg-lila">
    <div class="container">
        <div class="row">
            <?php
            $services = $db->prepare('select * from sayfalar where saytur="hizmet" order by baslik asc limit 3');
            $services->execute();

            if ($services->rowCount()) {
                foreach ($services as $servicesSatir) {
            ?>
                    <div class="col-md-4">
                        <div class="card text-center">
                            <img src="<?php echo substr($servicesSatir['gorsel'], 3); ?>" alt="<?php echo $servicesSatir['alt']; ?>" class="card-img-top">
                            <div class="card-body">
                                <h2 style="font-size:27px;" class="mb-4"><?php echo $servicesSatir['baslik']; ?></h2>
                                <?php echo substr($servicesSatir['icerik'], 0, 180); ?> <br>
                                <a href="sayfa.php?pageId=<?php echo $servicesSatir['id']; ?>"><button class="btn bg-mor text-white mt-4">Ayrıntılı Bilgi</button></a>
                            </div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>
        </div>
    </div>
</section>
<!-- Services Section End -->

<!-- About Us Section Start -->
<section id="aboutUs" class="py-5">
    <div class="container">
        <div class="row">
            <?php
            $hakkimizda = $db->prepare('select * from sayfalar where baslik="Hakkımızda" order by id desc limit 1');
            $hakkimizda->execute();
            $hakkimizdaSatir = $hakkimizda->fetch();
            ?>
            <div class="col-md-6 text-justify my-auto">
                <h3><?php echo $hakkimizdaSatir['baslik']; ?></h3>
                <?php echo substr($hakkimizdaSatir['icerik'], 0, 600); ?><br>
                <a href="sayfa.php?pageId=<?php echo $hakkimizdaSatir['id']; ?>"><button class="btn bg-mor text-white mt-5">Devamını Okuyun</button></a>
            </div>
            <div class="col-md-6 text-center my-auto">
                <img src="<?php echo substr($hakkimizdaSatir['gorsel'], 3); ?>" alt="<?php echo $hakkimizdaSatir['alt']; ?>" class="w-100">
            </div>
        </div>
    </div>
</section>
<!-- About Us Section End -->

<!-- Seo Talep Section Start -->
<section id="seoTalep" class="bg-mor py-5 text-white text-center">
    <div class="container">
        <div class="row mb-3">
            <div class="col-8 mx-auto text-center ">
                <h3>Ücretsiz Seo Analizi Talebi Gönderin</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-8 mx-auto">
                <form action="" method="post" class="form-row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <input type="url" name="weburl" placeholder="Web Sitesi Adresiniz" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <input type="email" name="eposta" placeholder="E-Posta Adresiniz" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="submit" value="Gönder" class="btn btn-warning" name="seotalep">
                        </div>
                    </div>
                </form>
                <?php

                if (isset($_POST['seotalep'])) {

                    $weburl = $_POST['weburl'];
                    $eposta = $_POST['eposta'];

                    $seoTalep = $db->prepare('insert into seotalep(weburl, eposta, puan) values(?,?,?)');
                    $seoTalep->execute(array($weburl, $eposta, '-'));

                    if ($seoTalep->rowCount()) {
                        echo 'seo talep kaydınız alınmıştır.';
                    } else {
                        echo 'hata oluştu lütfen tekrar deneyiniz';
                    }
                }

                ?>
            </div>
        </div>
    </div>
</section>
<!-- Seo Talep Section End -->

<!-- Pricing Section Start -->
<section id="pricing" class="py-5 bg-light">
    <div class="container">
        <div class="row mb-3">
            <div class="col-12 text-center">
                <h3>Hizmet Paketlerimiz</h3>
            </div>
        </div>
        <div class="row">
            <?php
            $pricing = $db->prepare('select * from hizmetpaketi order by fiyat asc limit 3');
            $pricing->execute();
            if ($pricing->rowCount())

                foreach ($pricing as $pricingSatir) {
            ?>
                <div class="col-md-4">
                    <div class="card shadow">
                        <div class="card-header bg-white">
                            <span><?php echo $pricingSatir['baslik'] ?></span>
                            <span><?php echo $pricingSatir['baslik'] ?></span>
                        </div>
                        <div class="card-body">
                            <ul>
                                <?php

                                for ($i = 1; $i < 6; $i++) {


                                ?>
                                    <li><?php echo $pricingSatir["ozellik" . $i]; ?></li>
                                <?php
                                }
                                ?>
                            </ul>
                        </div>
                        <div class="card-footer bg-white">
                            başvur butonu gelecek (Modal ile)
                        </div>
                    </div>
                </div>
            <?php
                }
            ?>

        </div>
    </div>
</section>
<!-- Pricing Section End -->

<!-- Tanıtım Yazısı Start -->
<section id="tanitim" class="py-5 bg-mor text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                Özet Açıklama Gelecek
            </div>
            <div class="col-md-6">
                Görsel Gelecek
            </div>
        </div>
    </div>
</section>
<!-- Tanıtım Yazısı End -->

<!-- Blog Section Start -->
<section id="blog" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h3>Güncel Blog Yazılarımız</h3>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-md-4">
                <a href="">
                    <div class="card shadow">
                        <div class="card-body">
                            Blog yazısı özeti görselle birlikte
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center">
                <a href="blog.php" class="btn bg-mor text-white">Tümünü Okuyun</a>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<?php require_once('footer.php'); ?>