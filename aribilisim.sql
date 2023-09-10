-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 31 Ağu 2023, 20:25:53
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aribilisim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfabanner`
--

CREATE TABLE `anasayfabanner` (
  `id` int(11) NOT NULL,
  `bannermetin` varchar(500) NOT NULL,
  `bannerbutonlink` varchar(100) NOT NULL,
  `bannergorsel` varchar(150) NOT NULL,
  `bannergorselalt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `anasayfabanner`
--

INSERT INTO `anasayfabanner` (`id`, `bannermetin`, `bannerbutonlink`, `bannergorsel`, `bannergorselalt`) VALUES
(1, '<h1>Arı Bilişim Dijital Hizmetler</h1>\r\n\r\n<p>Web Tasarımı, Grafik Tasarımı ve Dijital Pazarlama Hizmetlerimiz ile dijital d&uuml;nyada bir adım &ouml;nde olun.</p>\r\n', 'https://www.youtube.com/watch?v=3HPWy05pvTU', '../assets/img/ari-bilisim-dijital-hizmetler-500x500.gif', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `adres` varchar(75) NOT NULL,
  `telefon` varchar(17) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `facebook` varchar(20) NOT NULL,
  `insta` varchar(20) NOT NULL,
  `twitter` varchar(20) NOT NULL,
  `whatsapp` varchar(17) NOT NULL,
  `kisaaciklama` text NOT NULL,
  `mainmeta` text NOT NULL,
  `harita` text NOT NULL,
  `pixel` text NOT NULL,
  `analitik` text NOT NULL,
  `konsol` text NOT NULL,
  `blogbanner` varchar(50) NOT NULL,
  `iletisimbanner` varchar(50) NOT NULL,
  `buton1` varchar(10) NOT NULL,
  `buton2` varchar(10) NOT NULL,
  `copy` varchar(75) NOT NULL,
  `footerrenk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `logo`, `adres`, `telefon`, `eposta`, `facebook`, `insta`, `twitter`, `whatsapp`, `kisaaciklama`, `mainmeta`, `harita`, `pixel`, `analitik`, `konsol`, `blogbanner`, `iletisimbanner`, `buton1`, `buton2`, `copy`, `footerrenk`) VALUES
(1, '../assets/img/ari-bilisim-logo-512x97px.png', 'Lorem Ipsum Dolor Sit Amet Kadıköy/İstanbul', '5555555555', 'info@aribilisim.com', 'aribilisim', 'aribilisim', 'aribilisim', '5555555555', 'Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet', 'Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12046.597135031932!2d29.013424722510276!3d40.98915993876741!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab8679bfb3d31%3A0x7d75715e081dfa5c!2sAr%C4%B1%20Bilgi%20Bili%C5%9Fim%20Teknolojileri%20Akademisi%20(Kad%C4%B1k%C3%B6y%20%C5%9Eube)!5e0!3m2!1str!2str!4v1689271031908!5m2!1str!2str\" width=\"100%\" height=\"350\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '<script>\r\nlet pixel = \"Facebook Pixel Kodu\"\r\n</script>', '<script>\r\nlet pixel = \"Google Analytics Kodu\"\r\n</script>', '<script>\r\nlet pixel = \"Google Search Kodu\"\r\n</script>', '../assets/img/hakkimda-banner-1500x600px.jpg', '../assets/img/iletisim-banner.jpeg', '#6c55f9', '#988bf9', 'Her Hakkı Saklıdır &copy; Arı Bilişim. İzinsiz Kopyalama Yapılamaz.', '#2d2b3a');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ebulten`
--

CREATE TABLE `ebulten` (
  `id` int(11) NOT NULL,
  `eposta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `ebulten`
--

INSERT INTO `ebulten` (`id`, `eposta`) VALUES
(1, 'info@aribilisim.com'),
(3, 'haykocepkin@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `adiniz` varchar(50) NOT NULL,
  `telefon` varchar(17) NOT NULL,
  `eposta` varchar(100) NOT NULL,
  `konu` varchar(50) NOT NULL,
  `mesaj` text NOT NULL,
  `durum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `adiniz`, `telefon`, `eposta`, `konu`, `mesaj`, `durum`) VALUES
(1, 'Hayko Cepkin', '5555555555', 'haykocepkin@gmail.com', 'Web Sitesi', 'Bana web sitesi lazım. Bütçe çok.', 'okundu'),
(2, 'Mahmut Tuncer', '5557778899', 'mamo@gmail.com', 'Dijital Pazarlama', 'Halay Çekelim isimli albümüm çıktı. Sosyal Medya reklamı istiyorum.', 'okundu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `katadi` varchar(25) NOT NULL,
  `katturu` varchar(15) NOT NULL,
  `anakat` varchar(25) NOT NULL,
  `kataciklama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `katadi`, `katturu`, `anakat`, `kataciklama`) VALUES
(1, 'Web Tasarımı', 'Ana Kategori', '', 'Web Tasarımı güncel bilgiler'),
(2, 'Grafik Tasarımı', 'Ana Kategori', 'Web Tasarımı', 'Grafik Tasarımı güncel bilgileri'),
(4, 'Dijital Pazarlama', 'Ana Kategori', '-', 'Sosyal Medya ve Google Süreçleri Hakkında Güncel Bilgiler'),
(5, 'Html', 'Alt Kategori', 'Web Tasarımı', 'Web tasarımında kullanılan kodlar'),
(6, 'Seo', 'Alt Kategori', 'Dijital Pazarlama', 'Google Organik Sonuçlar için Güncel Optimizasyon Bilgileri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolyo`
--

CREATE TABLE `portfolyo` (
  `id` int(11) NOT NULL,
  `projeadi` varchar(75) NOT NULL,
  `turu` varchar(30) NOT NULL,
  `projeCinsi` varchar(30) NOT NULL,
  `sektor` varchar(30) NOT NULL,
  `teknoloji` varchar(150) NOT NULL,
  `projeadresi` varchar(70) NOT NULL,
  `konu` text NOT NULL,
  `gorsel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `portfolyo`
--

INSERT INTO `portfolyo` (`id`, `projeadi`, `turu`, `projeCinsi`, `sektor`, `teknoloji`, `projeadresi`, `konu`, `gorsel`) VALUES
(1, 'Acıbadem Beauty Center', 'Kurumsal', 'Web Tasarımı', 'Sağlık', 'Html, Css, Bootsrap, Php', 'https://www.acibadembeautycenter.com', 'Acıbadem sağlık grubu yurtdışı hastalarına yönelik güzellik merkezi web sitesi projesi', '../assets/img/foto (1).jpg'),
(3, 'Acıbadem Hp Travel', 'Kurumsal', 'Web Tasarımı', 'Sağlık', 'Html, Css, Bootsrap, Php', 'https://www.acibademhptravel.com', 'Yurtdışı güzellik ve estetik hizmetleri', '../assets/img/foto (2).jpg'),
(4, 'Acıbadem Mobil', 'Kurumsal', 'Web Tasarımı', 'Sağlık', 'Html, Css, Bootsrap, Php', 'https://www.acibademmobil.com.tr', 'Acil Ambulans ve Evde Bakım Hizmetleri', '../assets/img/foto (3).jpg'),
(5, 'Bati', 'Kurumsal', 'Web Tasarımı', 'Müzik', 'Html, Css, Bootsrap, Php', 'https://www.bati.com', 'Bateri ve Bateri Ürünleri Online Satış Sitesi', '../assets/img/foto (4).jpg'),
(6, 'Bodrum\'da Hayat', 'Bireysel', 'Web Tasarımı', 'Turizim', 'Html, Css, Bootsrap, Php', 'https://www.bodrumdahayat.com', 'Bodrum hayatı ve konaklama bilgileri üzerine kişisel blog sitesi', '../assets/img/foto (5).jpg'),
(7, 'Kurumi', 'Kurumsal', 'Web Tasarımı', 'Holding', 'Html, Css, Bootsrap, Php', 'https://www.kurumi.com', 'Kurumi holdinge ve iştiraklerine ait web sitesi', '../assets/img/foto (6).jpg'),
(8, 'Cenova Yayınları', 'Kurumsal', 'Web Tasarımı', 'Yayıncılık', 'Html, Css, Bootsrap, Php', 'https://www.cenovayayinlari.com', 'Kitap, Dergi basım ve yayım evi web sitesi', '../assets/img/foto (7).jpg'),
(9, 'Duru Nakliyat', 'Kurumsal', 'Web Tasarımı', 'Nakliyat', 'Html, Css, Bootsrap, Php', 'https://www.durunakliyat.com', 'Evden eve ve ofis taşımacılığı yapan firmaya ait web sitesi', '../assets/img/foto (8).jpg'),
(10, 'Ekoo Dükkan', 'Kurumsal', 'Web Tasarımı', 'E-Ticaret', 'Html, Css, Bootsrap, Php', 'https://www.ekoodukkan.com', 'Cep telefonu ve teknoloji aksesuarları üzerine e-ticaret web sitesi', '../assets/img/foto (9).jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reklam`
--

CREATE TABLE `reklam` (
  `id` int(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `telefon` varchar(17) NOT NULL,
  `eposta` varchar(150) NOT NULL,
  `aciklama` text NOT NULL,
  `gorsel` varchar(150) NOT NULL,
  `durum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `reklam`
--

INSERT INTO `reklam` (`id`, `adi`, `telefon`, `eposta`, `aciklama`, `gorsel`, `durum`) VALUES
(1, 'Cem Yılmaz', '5555555555', 'cmylmz@gmail.com', 'Yeni film reklamı', './assets/img/003.jpg', 'Onaylandı'),
(2, 'Ajdar', '09000900900', 'cikitamuz@gmail.com', 'Çikta çikta çikita muz şarkımın yeni single\'ına ait reklam yayınlamak istiyorum.', './assets/img/P2.jpg', 'Onaylandı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `meta` text NOT NULL,
  `gorsel` varchar(50) NOT NULL,
  `alt` varchar(90) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `altkategori` varchar(20) NOT NULL,
  `tarih` varchar(12) NOT NULL,
  `durum` varchar(7) NOT NULL,
  `saytur` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `icerik`, `meta`, `gorsel`, `alt`, `kategori`, `altkategori`, `tarih`, `durum`, `saytur`) VALUES
(1, 'Web Tasarım Hizmeti', '<p>Web Tasarımı Hizmeti,<span style=\"color:#e74c3c\">&nbsp;</span>consectetur adipiscing elit. Praesent et nisi nunc. Nunc lorem tortor, tristique ultrices congue vel, facilisis vitae dui. Nunc sed dui in libero efficitur tempus vel vel tellus. Vivamus eget libero eu nisi suscipit pretium at quis ipsum. Sed erat tortor, rhoncus eu nibh eu, pharetra sollicitudin libero. Nam quis imperdiet libero, vel vulputate lectus. Aliquam viverra, sem ac iaculis porttitor, orci lacus vulputate nibh, ac varius ex ante eget felis. In hac habitasse platea dictumst. Vivamus condimentum tristique dolor, ut vehicula dui. Curabitur a nisi sodales, accumsan purus ac, dignissim neque. Morbi sodales malesuada ligula sit amet vulputate. Morbi fermentum dignissim vestibulum.</p>\r\n\r\n<h2>Web Tasarım Hizmetinin Avantajları</h2>\r\n\r\n<p>Integer blandit mattis risus. Vestibulum ut iaculis magna. Donec dapibus non elit vehicula interdum. Morbi nec laoreet metus. Ut arcu felis, egestas pharetra metus non, cursus fringilla ipsum. Duis interdum pharetra commodo. In bibendum consequat tellus, condimentum ullamcorper justo pulvinar sed. Phasellus vitae felis sed erat ullamcorper blandit et sed sapien. Praesent imperdiet quis nisi id aliquam. In vel sapien tempor, lobortis urna commodo, tincidunt ex. Cras commodo arcu arcu, ac porta purus vestibulum non. Ut a cursus augue. Maecenas suscipit ex et sapien dictum tincidunt.</p>\r\n\r\n<p>Praesent non volutpat elit, ut viverra lacus. Nulla vestibulum eros nec placerat feugiat. Sed quis erat commodo, consectetur leo at, tempor odio. Phasellus vel dui vitae justo posuere finibus ut eget nisi. Integer ex lectus, pulvinar nec nibh et, fermentum convallis ipsum. Ut tincidunt id mi non bibendum. Donec fringilla vulputate tellus eget consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse sed euismod sapien. Ut id varius mauris. Donec vitae semper purus, vel elementum lorem. Aenean commodo eu purus eget luctus. Curabitur venenatis semper pretium.</p>\r\n', 'Praesent et nisi nunc. Nunc lorem tortor, tristique', '../assets/img/foto (4).jpg', 'Web Tasarım Hizmeti', 'Web Tasarımı', 'Html', '2023-07-18', 'Yayında', 'hizmet'),
(3, 'Grafik Tasarım Hizmeti', '<p><strong>Grafik Tasarımı,</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis ligula non nibh vestibulum gravida. Aenean nec molestie metus, non elementum eros. Praesent pulvinar velit et pulvinar fermentum. Nulla ante est, varius quis ante vitae, interdum gravida nisl. Nullam non massa nec odio scelerisque faucibus. Nam ex eros, rhoncus a fringilla et, semper ac justo. Phasellus convallis quis velit quis porta. Proin eleifend, mauris quis vehicula molestie, metus dui molestie tellus, eget posuere erat urna ut magna. Integer vitae commodo neque. Vivamus eget eleifend felis. Pellentesque cursus rutrum iaculis. Maecenas id lobortis libero, at pharetra enim. Sed rhoncus, massa accumsan vulputate rhoncus, magna justo porta arcu, sit amet dignissim diam nisl vitae nibh. Curabitur lobortis semper felis sed tristique. Maecenas iaculis eget lacus ut dapibus.</p>\r\n\r\n<p>Fusce ultricies et libero et semper. Phasellus elementum est eu consectetur maximus. Etiam ante dolor, venenatis ac iaculis ut, iaculis id ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec placerat ex. Nunc rutrum non nunc quis vulputate. Curabitur eros nisi, vehicula ac bibendum eu, aliquet non ligula. Fusce bibendum diam non maximus dictum. Pellentesque elementum nec ipsum in consequat. Quisque felis lorem, porta quis auctor at, dapibus nec dolor. Nunc sagittis felis vel hendrerit mattis. Nam aliquet libero molestie, pellentesque lectus a, bibendum elit.</p>\r\n\r\n<p>Phasellus id consequat nisl. Aliquam suscipit egestas justo vel auctor. Proin felis elit, gravida at tempus ac, fermentum sit amet arcu. Nulla facilisi. Ut pretium, libero in sollicitudin malesuada, mi felis rhoncus tortor, sit amet dictum nisi ipsum et sapien. Suspendisse faucibus elit quis justo pretium dignissim. Etiam vitae dui vel nulla molestie tincidunt vel et sem. Duis non sollicitudin metus. Morbi facilisis fermentum ipsum vel ullamcorper. Duis euismod vehicula mauris non pharetra. Mauris lorem risus, faucibus vel egestas vel, pulvinar quis quam. Vestibulum sed tellus eget augue iaculis rhoncus sed non lacus.</p>\r\n', 'Grafik Tasarımı, Lorem ipsum dolor sit amet,', '../assets/img/foto (5).jpg', 'Grafik Tasarım Hizmeti', 'Grafik Tasarımı', '', '2023-07-20', 'Yayında', 'hizmet'),
(4, 'Dijital Pazarlama Hizmeti', '<p><strong>Dijital Pazarlama Hizmeti</strong>, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis ligula non nibh vestibulum gravida. Aenean nec molestie metus, non elementum eros. Praesent pulvinar velit et pulvinar fermentum. Nulla ante est, varius quis ante vitae, interdum gravida nisl. Nullam non massa nec odio scelerisque faucibus. Nam ex eros, rhoncus a fringilla et, semper ac justo. Phasellus convallis quis velit quis porta. Proin eleifend, mauris quis vehicula molestie, metus dui molestie tellus, eget posuere erat urna ut magna. Integer vitae commodo neque. Vivamus eget eleifend felis. Pellentesque cursus rutrum iaculis. Maecenas id lobortis libero, at pharetra enim. Sed rhoncus, massa accumsan vulputate rhoncus, magna justo porta arcu, sit amet dignissim diam nisl vitae nibh. Curabitur lobortis semper felis sed tristique. Maecenas iaculis eget lacus ut dapibus.</p>\r\n\r\n<p>Fusce ultricies et libero et semper. Phasellus elementum est eu consectetur maximus. Etiam ante dolor, venenatis ac iaculis ut, iaculis id ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec placerat ex. Nunc rutrum non nunc quis vulputate. Curabitur eros nisi, vehicula ac bibendum eu, aliquet non ligula. Fusce bibendum diam non maximus dictum. Pellentesque elementum nec ipsum in consequat. Quisque felis lorem, porta quis auctor at, dapibus nec dolor. Nunc sagittis felis vel hendrerit mattis. Nam aliquet libero molestie, pellentesque lectus a, bibendum elit.</p>\r\n\r\n<p>Phasellus id consequat nisl. Aliquam suscipit egestas justo vel auctor. Proin felis elit, gravida at tempus ac, fermentum sit amet arcu. Nulla facilisi. Ut pretium, libero in sollicitudin malesuada, mi felis rhoncus tortor, sit amet dictum nisi ipsum et sapien. Suspendisse faucibus elit quis justo pretium dignissim. Etiam vitae dui vel nulla molestie tincidunt vel et sem. Duis non sollicitudin metus. Morbi facilisis fermentum ipsum vel ullamcorper. Duis euismod vehicula mauris non pharetra. Mauris lorem risus, faucibus vel egestas vel, pulvinar quis quam. Vestibulum sed tellus eget augue iaculis rhoncus sed non lacus.</p>\r\n', 'Dijital Pazarlama Hizmeti, Lorem ipsum dolor sit amet,', '../assets/img/foto (6).jpg', 'Dijital Pazarlama Hizmeti', 'Dijital Pazarlama', '', '2023-07-20', 'Yayında', 'hizmet'),
(5, 'Hakkımızda', '<p><strong>Arı Bilişim Dijital Hizmetler olarak</strong>, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis ligula non nibh vestibulum gravida. Aenean nec molestie metus, non elementum eros. Praesent pulvinar velit et pulvinar fermentum. Nulla ante est, varius quis ante vitae, interdum gravida nisl. Nullam non massa nec odio scelerisque faucibus. Nam ex eros, rhoncus a fringilla et, semper ac justo. Phasellus convallis quis velit quis porta. Proin eleifend, mauris quis vehicula molestie, metus dui molestie tellus, eget posuere erat urna ut magna. Integer vitae commodo neque. Vivamus eget eleifend felis. Pellentesque cursus rutrum iaculis. Maecenas id lobortis libero, at pharetra enim. Sed rhoncus, massa accumsan vulputate rhoncus, magna justo porta arcu, sit amet dignissim diam nisl vitae nibh. Curabitur lobortis semper felis sed tristique. Maecenas iaculis eget lacus ut dapibus.</p>\r\n\r\n<p>Fusce ultricies et libero et semper. Phasellus elementum est eu consectetur maximus. Etiam ante dolor, venenatis ac iaculis ut, iaculis id ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec placerat ex. Nunc rutrum non nunc quis vulputate. Curabitur eros nisi, vehicula ac bibendum eu, aliquet non ligula. Fusce bibendum diam non maximus dictum. Pellentesque elementum nec ipsum in consequat. Quisque felis lorem, porta quis auctor at, dapibus nec dolor. Nunc sagittis felis vel hendrerit mattis. Nam aliquet libero molestie, pellentesque lectus a, bibendum elit.</p>\r\n\r\n<p>Phasellus id consequat nisl. Aliquam suscipit egestas justo vel auctor. Proin felis elit, gravida at tempus ac, fermentum sit amet arcu. Nulla facilisi. Ut pretium, libero in sollicitudin malesuada, mi felis rhoncus tortor, sit amet dictum nisi ipsum et sapien. Suspendisse faucibus elit quis justo pretium dignissim. Etiam vitae dui vel nulla molestie tincidunt vel et sem. Duis non sollicitudin metus. Morbi facilisis fermentum ipsum vel ullamcorper. Duis euismod vehicula mauris non pharetra. Mauris lorem risus, faucibus vel egestas vel, pulvinar quis quam. Vestibulum sed tellus eget augue iaculis rhoncus sed non lacus.</p>\r\n', 'Arı Bilişim Dijital Hizmetler olarak, Lorem ipsum dolor sit amet,', '../assets/img/hakkimda.png', 'Hakkımızda', '', '', '2023-07-20', 'Yayında', 'altsayfa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seotalep`
--

CREATE TABLE `seotalep` (
  `id` int(11) NOT NULL,
  `weburl` varchar(150) NOT NULL,
  `eposta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `talep`
--

CREATE TABLE `talep` (
  `id` int(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `telefon` varchar(17) NOT NULL,
  `eposta` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `sayfa` varchar(50) NOT NULL,
  `dosya` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `talep`
--

INSERT INTO `talep` (`id`, `adi`, `telefon`, `eposta`, `info`, `sayfa`, `dosya`) VALUES
(1, 'Tarkan', '0555 555 5555', 'tarkan@gmail.com', 'Seo Hizmeti İstiyorum', 'Dijital Pazarlama Hizmeti', './docs/talep-aciklama.docx'),
(5, 'Haluk Levent', '05557895623', 'halo@gmail.com', 'Ahbap Derneğine Yeni Bir Web Sitesi İstiyorum', 'Dijital Pazarlama Hizmeti', './docs/talep-aciklama.docx'),
(8, 'Yıldız Tilbe', '09000900900', 'delikanliyildiz@gmail.com', 'delikanlım delikanlım', 'Dijital Pazarlama Hizmeti', './docs/iletisim-banner.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilar`
--

CREATE TABLE `yazilar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `icerik` text NOT NULL,
  `meta` text NOT NULL,
  `alt` varchar(100) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `tarih` varchar(15) NOT NULL,
  `durum` varchar(15) NOT NULL,
  `gorsel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`id`, `baslik`, `icerik`, `meta`, `alt`, `kategori`, `tarih`, `durum`, `gorsel`) VALUES
(1, 'Web Tasarımının İlkeleri', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Integer sit amet metus venenatis, convallis purus vel, luctus sem. Ut lacus lectus, elementum sit amet mauris at, pulvinar aliquam justo. Ut efficitur sapien feugiat, efficitur ex et, pharetra enim. Donec fermentum porta arcu non pretium. Sed eros elit, pretium nec augue eget, pretium lobortis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras ac mauris venenatis, auctor lectus non, consectetur magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque aliquam sapien ac pellentesque iaculis. Praesent orci ipsum, scelerisque sed vehicula rutrum, vestibulum in erat. Maecenas elit diam, euismod a risus a, hendrerit fringilla orci. Curabitur sodales, lorem nec tincidunt molestie, orci ex hendrerit ipsum, a aliquet neque ante sed lectus. Suspendisse sed commodo elit. Aenean est tortor, porttitor ac mauris at, interdum cursus ante. Suspendisse potenti. Quisque eget dolor eu est gravida convallis at id augue.</p>\r\n\r\n<p>Nullam mi nisl, gravida eu faucibus efficitur, venenatis et metus. Pellentesque vehicula lorem et suscipit tincidunt. Quisque venenatis tellus lobortis dolor malesuada molestie. Donec malesuada, velit dapibus venenatis vestibulum, risus leo egestas nibh, sollicitudin ullamcorper lectus dolor dignissim tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas congue enim sit amet odio porttitor, in tincidunt nulla porttitor. Vestibulum luctus eros id elit ornare, placerat feugiat eros rutrum. Cras ut tellus nulla. Morbi viverra sem at massa mattis mattis.</p>\r\n\r\n<p>Duis est nunc, ultricies nec ultrices sit amet, ornare eu lectus. Suspendisse sit amet fermentum dui. Donec sit amet nisi non nisi pharetra iaculis quis a massa. In malesuada mi ut bibendum porta. Nulla nec lacus quis lectus aliquam viverra. Morbi volutpat magna non finibus scelerisque. In mi ligula, dictum vitae rhoncus sed, aliquet non nunc.</p>\r\n\r\n<p>Donec porttitor nunc lacus, ut finibus elit facilisis in. Maecenas ut erat est. Phasellus ultricies ligula vitae sem rhoncus, vel vehicula lacus tincidunt. Nunc mauris enim, tincidunt vitae augue sit amet, venenatis commodo felis. Cras sem ipsum, blandit vitae varius ac, ullamcorper sit amet sapien. Phasellus ac fermentum ex. Praesent ut sem placerat, accumsan ex in, mattis leo. Nunc ac scelerisque nisi.</p>\r\n\r\n<p>Nam ac elit volutpat, ultricies ante rutrum, aliquet tortor. Donec ligula metus, maximus non lacus eu, sollicitudin egestas ligula. Aliquam eros sem, consequat ut metus at, semper malesuada eros. Aenean vel tortor sed neque lacinia sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque sed fringilla enim. Sed elementum porta leo at placerat. Cras ipsum elit, porttitor quis mattis sit amet, vehicula eget lectus. Quisque lacus magna, placerat eu viverra vitae, viverra a erat. Curabitur eget risus accumsan, viverra leo sit amet, aliquam tellus. Cras ultricies suscipit bibendum. Curabitur aliquet nulla felis, nec bibendum justo efficitur eu. Praesent sodales leo id sapien viverra, vel vulputate dolor posuere. Quisque ipsum risus, ornare eu nunc vel, porttitor egestas nunc. Etiam non tellus et est feugiat commodo et sit amet nibh. Curabitur nec lobortis augue.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarımın İlkeleri', 'Web Tasarımı', '2023-07-04', 'Yayında', '../assets/img/foto (1).jpg'),
(2, 'Seo\'nun Önemi Nedir?', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Integer sit amet metus venenatis, convallis purus vel, luctus sem. Ut lacus lectus, elementum sit amet mauris at, pulvinar aliquam justo. Ut efficitur sapien feugiat, efficitur ex et, pharetra enim. Donec fermentum porta arcu non pretium. Sed eros elit, pretium nec augue eget, pretium lobortis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras ac mauris venenatis, auctor lectus non, consectetur magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque aliquam sapien ac pellentesque iaculis. Praesent orci ipsum, scelerisque sed vehicula rutrum, vestibulum in erat. Maecenas elit diam, euismod a risus a, hendrerit fringilla orci. Curabitur sodales, lorem nec tincidunt molestie, orci ex hendrerit ipsum, a aliquet neque ante sed lectus. Suspendisse sed commodo elit. Aenean est tortor, porttitor ac mauris at, interdum cursus ante. Suspendisse potenti. Quisque eget dolor eu est gravida convallis at id augue.</p>\r\n\r\n<p>Nullam mi nisl, gravida eu faucibus efficitur, venenatis et metus. Pellentesque vehicula lorem et suscipit tincidunt. Quisque venenatis tellus lobortis dolor malesuada molestie. Donec malesuada, velit dapibus venenatis vestibulum, risus leo egestas nibh, sollicitudin ullamcorper lectus dolor dignissim tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas congue enim sit amet odio porttitor, in tincidunt nulla porttitor. Vestibulum luctus eros id elit ornare, placerat feugiat eros rutrum. Cras ut tellus nulla. Morbi viverra sem at massa mattis mattis.</p>\r\n\r\n<p>Duis est nunc, ultricies nec ultrices sit amet, ornare eu lectus. Suspendisse sit amet fermentum dui. Donec sit amet nisi non nisi pharetra iaculis quis a massa. In malesuada mi ut bibendum porta. Nulla nec lacus quis lectus aliquam viverra. Morbi volutpat magna non finibus scelerisque. In mi ligula, dictum vitae rhoncus sed, aliquet non nunc.</p>\r\n\r\n<p>Donec porttitor nunc lacus, ut finibus elit facilisis in. Maecenas ut erat est. Phasellus ultricies ligula vitae sem rhoncus, vel vehicula lacus tincidunt. Nunc mauris enim, tincidunt vitae augue sit amet, venenatis commodo felis. Cras sem ipsum, blandit vitae varius ac, ullamcorper sit amet sapien. Phasellus ac fermentum ex. Praesent ut sem placerat, accumsan ex in, mattis leo. Nunc ac scelerisque nisi.</p>\r\n\r\n<p>Nam ac elit volutpat, ultricies ante rutrum, aliquet tortor. Donec ligula metus, maximus non lacus eu, sollicitudin egestas ligula. Aliquam eros sem, consequat ut metus at, semper malesuada eros. Aenean vel tortor sed neque lacinia sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque sed fringilla enim. Sed elementum porta leo at placerat. Cras ipsum elit, porttitor quis mattis sit amet, vehicula eget lectus. Quisque lacus magna, placerat eu viverra vitae, viverra a erat. Curabitur eget risus accumsan, viverra leo sit amet, aliquam tellus. Cras ultricies suscipit bibendum. Curabitur aliquet nulla felis, nec bibendum justo efficitur eu. Praesent sodales leo id sapien viverra, vel vulputate dolor posuere. Quisque ipsum risus, ornare eu nunc vel, porttitor egestas nunc. Etiam non tellus et est feugiat commodo et sit amet nibh. Curabitur nec lobortis augue.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet metus venenatis,', 'Seo', 'Dijital Pazarlama', '2023-07-11', 'Yayında', '../assets/img/foto (2).jpg'),
(6, '7 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Dijital Pazarlama', '2023-08-03', 'Yayında', '../assets/img/foto (3).jpg'),
(7, '6 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Grafik Tasarımı', '2023-08-03', 'Yayında', '../assets/img/foto (4).jpg'),
(8, '5 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Web Tasarımı', '2023-08-03', 'Yayında', '../assets/img/foto (5).jpg'),
(9, '4 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Grafik Tasarımı', '2023-08-03', 'Yayında', '../assets/img/foto (6).jpg'),
(10, '3 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Dijital Pazarlama', '2023-08-03', 'Yayında', '../assets/img/foto (7).jpg'),
(11, '2 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Web Tasarımı', '2023-08-03', 'Yayında', '../assets/img/foto (8).jpg'),
(12, '1 Lorem Ipsum Dolor Sit Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lectus velit. Etiam a nunc libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet elit libero, non tempus lacus blandit sit amet. In et facilisis lectus, nec venenatis elit. Nam porttitor quam augue. Mauris eget aliquet tellus. Aliquam mattis magna id erat condimentum, nec dapibus nisl faucibus. Pellentesque scelerisque elementum mollis.</p>\r\n\r\n<p>Donec orci sapien, scelerisque non sagittis vitae, hendrerit quis sapien. Etiam mollis sem eget lectus facilisis bibendum. Vivamus nunc ipsum, lobortis sed bibendum a, dictum non nisl. Cras nec neque eget enim pretium viverra. Duis condimentum mollis sem sit amet dignissim. Ut vitae hendrerit enim, sit amet porta nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In ipsum dui, pellentesque quis quam a, interdum tempus eros. Nullam vel sapien eu magna vehicula tincidunt. Donec vulputate, lacus in gravida tincidunt, ligula nulla pulvinar odio, vel sodales ipsum dolor eget elit. Mauris consectetur, velit non cursus lacinia, augue sapien tincidunt ex, at malesuada ipsum magna eu neque. Mauris eget sagittis augue. Quisque a lacus placerat, pretium nisi ac, finibus risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sed orci rhoncus, aliquam turpis sed, iaculis justo.</p>\r\n\r\n<p>Maecenas id posuere tellus, quis finibus mauris. Proin tincidunt arcu sed massa sagittis, non fringilla odio feugiat. In consequat nibh nec enim varius, et vehicula odio ullamcorper. Fusce a auctor felis. Cras ornare, nulla vel commodo tincidunt, quam metus aliquam neque, quis malesuada enim felis in nulla. Cras dapibus tortor eget ultrices aliquam. Proin et odio libero. Maecenas vitae placerat tortor.</p>\r\n\r\n<p>Nam cursus blandit dui. Aliquam feugiat libero pretium justo pulvinar, efficitur vehicula nibh tempus. Praesent eleifend, ex ac bibendum commodo, purus diam porttitor justo, sed aliquet sapien nisi quis libero. Aliquam imperdiet vitae ligula at lacinia. Phasellus luctus, libero ut viverra imperdiet, eros dolor lobortis nisl, a euismod tortor lorem id urna. Vestibulum posuere eros in volutpat tempor. Morbi commodo, ipsum sed ornare ultricies, dui tellus imperdiet leo, vel euismod leo urna vitae augue. Proin ac felis lectus. Sed ornare at nulla eu congue. Maecenas molestie luctus velit, nec accumsan tellus consectetur a. In a justo eu leo dictum suscipit. Etiam erat sem, ullamcorper ut ullamcorper eget, facilisis ut nibh. Donec quis sapien non libero blandit bibendum. Nunc eu diam turpis.</p>\r\n\r\n<p>In tristique dui eget commodo vulputate. Donec dignissim lectus eu nisi sodales, lobortis eleifend ipsum suscipit. Nunc euismod mattis eros commodo lacinia. Aliquam id orci lacus. Quisque blandit, arcu luctus faucibus scelerisque, nisi ligula eleifend arcu, non auctor augue urna at ipsum. Vivamus aliquam augue id odio commodo elementum. Mauris pretium egestas nibh, in convallis sapien tempor eget. Maecenas interdum, nisi nec laoreet pellentesque, metus lorem porta orci, sed tincidunt ante tortor ut tortor. Phasellus vitae scelerisque ex, ut cursus quam.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Web Tasarım Hizmeti', 'Grafik Tasarımı', '2023-08-03', 'Yayında', '../assets/img/foto (9).jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `eposta` varchar(100) NOT NULL,
  `yorum` text NOT NULL,
  `postId` varchar(12) NOT NULL,
  `durum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `ad`, `eposta`, `yorum`, `postId`, `durum`) VALUES
(1, 'Hayko Cepkin', 'haykocepkin@gmail.com', 'Harika bir blog yazısı. Yenilerini bekliyoruz.', '12', 'onay'),
(2, 'Mahmut Tuncer', 'mamos@gmail.com', 'Gidek Gidek Kalk Gidek Adanaya Gidek Halay Çekerek', '7', 'onay'),
(3, 'Bülent Ersoy', 'bulo@gmail.com', 'Ablan kurban olsun sana ne güzel bir blog yazısı', '2', 'onay'),
(5, 'Fatih Ürek', 'fatos@gmail.com', 'O yorum yapar da ben eksik kalır mıyım yılaaannn tıssss', '2', 'onay');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfabanner`
--
ALTER TABLE `anasayfabanner`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ebulten`
--
ALTER TABLE `ebulten`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `portfolyo`
--
ALTER TABLE `portfolyo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reklam`
--
ALTER TABLE `reklam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seotalep`
--
ALTER TABLE `seotalep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `talep`
--
ALTER TABLE `talep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yazilar`
--
ALTER TABLE `yazilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfabanner`
--
ALTER TABLE `anasayfabanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ebulten`
--
ALTER TABLE `ebulten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `portfolyo`
--
ALTER TABLE `portfolyo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `reklam`
--
ALTER TABLE `reklam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `seotalep`
--
ALTER TABLE `seotalep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `talep`
--
ALTER TABLE `talep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yazilar`
--
ALTER TABLE `yazilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
