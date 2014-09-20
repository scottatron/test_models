require 'json'

class SeedProducts < ActiveRecord::Migration
  def change
    json_array = data

    json_array.each_with_index do |json_product, index|
      break if index >= 100

      product = Product.new
      product.name = json_product["name"]
      product.short_desc = json_product["shortDescription"]
      product.best_selling_rank = json_product["bestSellingRank"]
      product.thumbnail = json_product["thumbnailImage"]
      product.price = json_product["salePrice"]
      product.manufacturer = json_product["manufacturer"]
      product.url = json_product["url"]
      product.product_type = json_product["type"]
      product.image = json_product["image"]
      product.category = json_product["category"]
      product.free_shipping = !json_product["shipping"].nil?
      product.save
    end
    return nil
  end

  def data
    JSON.parse( <<-json
      [
        {
          "name": "Webroot SecureAnywhere Internet Security (3-Device) (1-Year Subscription) - Mac/Windows",
          "shortDescription": "Safeguard your PC, Mac, Android and iOS devices with comprehensive Internet protection",
          "bestSellingRank": 4,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1688/1688832_54x108_s.gif",
          "salePrice": 49.99,
          "manufacturer": "Webroot",
          "url": "http://www.bestbuy.com/site/webroot-secureanywhere-internet-security-3-device-1-year-subscription-mac-windows/1688832.p?id=1219060687969&skuId=1688832&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "Software",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/1688/1688832_105x210_sc.jpg",
          "customerReviewCount": 5980,
          "category": "Computer Security Software",
          "objectID": 1688832,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Geek Squad® - Tech Support Membership (1 Year)",
          "shortDescription": "Who has time for frustrating computer issues? With unlimited coverage for all your computing issues, Geek Squad Tech Support is the expert resource you need to keep your PC, Mac or tablet (up to three devices) up and running, no matter where you bought them. Get convenient help any way you'd like: in store, online or on the phone.",
          "bestSellingRank": 7,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1853/1853259_s.gif",
          "salePrice": 199.99,
          "manufacturer": "Geek Squad®",
          "url": "http://www.bestbuy.com/site/geek-squad-tech-support-membership-1-year/1853259.p?id=1218323911480&skuId=1853259&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/1853/1853259_sc.jpg",
          "customerReviewCount": 3306,
          "category": "Virus & Spyware Removal",
          "objectID": 1853259,
          "shipping": "Free shipping",
          "salePrice_range": "201 - 500"
        },
        {
          "name": "Apple® - 3.3' Lightning-to-USB 2.0 Cable",
          "shortDescription": "Compatible with most Apple&#174; iPad&#174;, iPhone&#174; and iPod&#174; models with a Lightning connector; charges and syncs your device; reversible design",
          "bestSellingRank": 12,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6652/6652043_s.gif",
          "salePrice": 19.99,
          "manufacturer": "Apple®",
          "url": "http://www.bestbuy.com/site/apple-3-3-lightning-to-usb-2-0-cable/6652043.p?id=1218803451837&skuId=6652043&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6652/6652043_sc.jpg",
          "customerReviewCount": 569,
          "category": "Data Cables",
          "objectID": 6652043,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Google - Chromecast HDMI Streaming Media Player",
          "shortDescription": "Casts online video and music to your HDTV from popular apps like Netflix, YouTube, HBO GO, Hulu Plus, Pandora, Crackle, ESPN, MLB.TV, Google Play Movies & TV, Google Play Music, Chrome* and more; plug in and play; works across platforms; no remote required",
          "bestSellingRank": 17,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/9071/9071056_s.gif",
          "salePrice": 35.0,
          "manufacturer": "Google",
          "url": "http://www.bestbuy.com/site/google-chromecast-hdmi-streaming-media-player/9071056.p?id=1219013308425&skuId=9071056&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/9071/9071056_sc.jpg",
          "customerReviewCount": 5872,
          "category": "Streaming Media Players",
          "objectID": 9071056,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Kaspersky Internet Security (3-Device) (1-Year Subscription) - Mac/Windows",
          "shortDescription": "Provide comprehensive protection to up to three devices in your home",
          "bestSellingRank": 24,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1689/1689012_s.gif",
          "salePrice": 49.99,
          "manufacturer": "Kaspersky Lab",
          "url": "http://www.bestbuy.com/site/kaspersky-internet-security-3-device-1-year-subscription-mac-windows/1689012.p?id=1219060668483&skuId=1689012&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "Software",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/1689/1689012_sc.jpg",
          "customerReviewCount": 1252,
          "category": "Kaspersky Lab",
          "objectID": 1689012,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Logitech - Marathon Mouse M705 Wireless Laser Mouse - Black",
          "shortDescription": "Laser technology; Unifying receiver; wireless USB interface",
          "bestSellingRank": 25,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1325/1325119_s.gif",
          "salePrice": 39.99,
          "manufacturer": "Logitech",
          "url": "http://www.bestbuy.com/site/logitech-marathon-mouse-m705-wireless-laser-mouse-black/1325119.p?id=1218250610754&skuId=1325119&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/1325/1325119_sc.jpg",
          "customerReviewCount": 9,
          "category": "Wireless Mice",
          "objectID": 1325119,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Toshiba - Satellite 15.6\" Laptop - Intel Celeron - 4GB Memory - 500GB Hard Drive - Jet Black",
          "shortDescription": "Windows 8.1 64-bitTechnical details: Intel&#174; Celeron&#174; processor; 15.6\" display; 4GB memory; 500GB hard driveSpecial features: HDMI outputNote: DVD/CD drive not included",
          "bestSellingRank": 28,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6841/6841014_s.gif",
          "salePrice": 228.99,
          "manufacturer": "Toshiba",
          "url": "http://www.bestbuy.com/site/toshiba-satellite-15-6-laptop-intel-celeron-4gb-memory-500gb-hard-drive-jet-black/6841014.p?id=1219241419174&skuId=6841014&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6841/6841014_sc.jpg",
          "customerReviewCount": 14,
          "category": "PC Laptops",
          "objectID": 6841014,
          "shipping": "Free shipping",
          "salePrice_range": "201 - 500"
        },
        {
          "name": "SanDisk - Cruzer 16GB USB 2.0 Flash Drive - Black",
          "shortDescription": "For PC, Mac and Linux; retractable USB connector; drag-and-drop file backup; includes SanDisk SecureAccess software; access to 2GB of YuuWaa Cloud storage",
          "bestSellingRank": 29,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/9226/9226875_s.gif",
          "salePrice": 7.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-cruzer-16gb-usb-2-0-flash-drive-black/9226875.p?id=1218062423830&skuId=9226875&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/9226/9226875_sc.jpg",
          "customerReviewCount": 871,
          "category": "USB Flash Drives",
          "objectID": 9226875,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Ultra Plus 16GB SDHC Class 10 UHS-1 Memory Card",
          "shortDescription": "Compatible with most devices with a SDHC card slot; 16GB capacity; temperature-, X-ray-, shock- and waterproof design; writeable label",
          "bestSellingRank": 34,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142535_s.gif",
          "salePrice": 14.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-ultra-plus-16gb-sdhc-class-10-uhs-1-memory-card/3142535.p?id=1219088212869&skuId=3142535&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142535_sc.jpg",
          "customerReviewCount": 273,
          "category": "Secure Digital",
          "objectID": 3142535,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Office Home & Student 2013 - Windows",
          "shortDescription": "Create, communicate and learn using streamlined touch, pen or keyboard commands",
          "bestSellingRank": 39,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/7016/7016127_54x54_s.gif",
          "salePrice": 139.99,
          "manufacturer": "Microsoft",
          "url": "http://www.bestbuy.com/site/office-home-student-2013-windows/7016127.p?id=1218821792097&skuId=7016127&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "Software",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/7016/7016127_105x105_sc.jpg",
          "customerReviewCount": 3510,
          "category": "Office Software Suites",
          "objectID": 7016127,
          "shipping": "Free shipping",
          "salePrice_range": "201 - 500"
        },
        {
          "name": "Apple® - TV",
          "shortDescription": "3rd generation; compatible with most HDTVs with an HDMI interface; allows you to stream movies, TV shows, photos and music from your computer to your HDTV or home theater system; 802.11a/b/g/n wireless LAN. \nLearn more about smart products.",
          "bestSellingRank": 46,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/4854/4854433_s.gif",
          "salePrice": 89.99,
          "manufacturer": "Apple®",
          "url": "http://www.bestbuy.com/site/apple-tv/4854433.p?id=1218552476525&skuId=4854433&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/4854/4854433_sc.jpg",
          "customerReviewCount": 7280,
          "category": "Streaming Media Players",
          "objectID": 4854433,
          "shipping": "Free shipping",
          "salePrice_range": "101 - 200"
        },
        {
          "name": "Monthly Accidental Protection Plan - Geek Squad",
          "shortDescription": "",
          "bestSellingRank": 48,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/nonsku/default_hardlines_s.gif",
          "salePrice": 9.99,
          "url": "http://www.bestbuy.com/site/monthly-accidental-protection-plan-geek-squad/1752369.p?id=1219064726785&skuId=1752369&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "BlackTie",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/nonsku/default_hardlines_l.jpg",
          "customerReviewCount": null,
          "category": null,
          "objectID": 1752369,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Insignia™ - 4' Lightning Charge-and-Sync Cable",
          "shortDescription": "Compatible with select Apple&#174; iPad&#174;, iPhone&#174; and iPod&#174; models; lets you charge and sync Apple devices; 4' length",
          "bestSellingRank": 49,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/5019/5019369_s.gif",
          "salePrice": 14.99,
          "manufacturer": "Insignia™",
          "url": "http://www.bestbuy.com/site/insignia-4-lightning-charge-and-sync-cable/5019369.p?id=1219106282393&skuId=5019369&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/5019/5019369_sc.jpg",
          "customerReviewCount": null,
          "category": "Data Cables",
          "objectID": 5019369,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Apple® - EarPods™ with Remote and Mic - White",
          "shortDescription": "In-line remote and mic; compatible with select Apple iPhone, iPod and iPad models; sweat- and water-resistant design",
          "bestSellingRank": 52,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6848/6848136_s.gif",
          "salePrice": 29.99,
          "manufacturer": "Apple®",
          "url": "http://www.bestbuy.com/site/apple-earpods-with-remote-and-mic-white/6848136.p?id=1218809156050&skuId=6848136&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6848/6848136_sc.jpg",
          "customerReviewCount": 2524,
          "category": "Headphones",
          "objectID": 6848136,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "HP - 564XL Ink Cartridge - Black",
          "shortDescription": "Compatible with select HP Photosmart printers; black ink; 1 cartridge",
          "bestSellingRank": 53,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1982/1982034_s.gif",
          "salePrice": 23.99,
          "manufacturer": "HP",
          "url": "http://www.bestbuy.com/site/hp-564xl-ink-cartridge-black/1982034.p?id=1218304547043&skuId=1982034&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/1982/1982034_sc.jpg",
          "customerReviewCount": 1550,
          "category": "Printer Ink",
          "objectID": 1982034,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Ultra Plus 32GB SDHC Class 10 UHS-1 Memory Card",
          "shortDescription": "Compatible with most devices with a SDHC card slot; 32GB capacity; temperature-, X-ray-, shock- and waterproof design; writeable label",
          "bestSellingRank": 58,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142553_s.gif",
          "salePrice": 24.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-ultra-plus-32gb-sdhc-class-10-uhs-1-memory-card/3142553.p?id=1219088217648&skuId=3142553&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142553_sc.jpg",
          "customerReviewCount": 192,
          "category": "Secure Digital",
          "objectID": 3142553,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Cruzer 32GB USB 2.0 Flash Drive - Black",
          "shortDescription": "High-speed USB 2.0 interface for fast data transfer; U3 enabled; PC and Mac compatible",
          "bestSellingRank": 60,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/9288/9288807_s.gif",
          "salePrice": 14.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-cruzer-32gb-usb-2-0-flash-drive-black/9288807.p?id=1218075402509&skuId=9288807&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/9288/9288807_sc.jpg",
          "customerReviewCount": 619,
          "category": "USB Flash Drives",
          "objectID": 9288807,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Ultra Plus 32GB microSDHC Class 10 UHS-1 Memory Card",
          "shortDescription": "Compatible with most devices with a microSDHC card slot; 32GB capacity; temperature-, X-ray-, shock- and waterproof design; writeable label",
          "bestSellingRank": 63,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142635_s.gif",
          "salePrice": 24.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-ultra-plus-32gb-microsdhc-class-10-uhs-1-memory-card/3142635.p?id=1219088213853&skuId=3142635&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142635_sc.jpg",
          "customerReviewCount": 193,
          "category": "Micro SD Memory",
          "objectID": 3142635,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "The Raid 2 (2 Disc) (Unrated) (Ultraviolet Digital Copy) (Blu-ray Disc)",
          "shortDescription": null,
          "bestSellingRank": 64,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6938/6938047s.jpg",
          "salePrice": 19.99,
          "url": "http://www.bestbuy.com/site/the-raid-2-2-disc-unrated-ultraviolet-digital-copy-blu-ray-disc/6938047.p?id=3231559&skuId=6938047&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "Movie",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6938/6938047.jpg",
          "customerReviewCount": 1,
          "category": "Movies & TV Shows",
          "objectID": 6938047,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Dynex™ - 6' HDMI Cable",
          "shortDescription": "Connects an HDMI source to an HDTV or projector with an HDMI input; supports HDMI Ethernet Channel (HEC) and Audio Return Channel (ARC); compatible with most screen refresh rates",
          "bestSellingRank": 65,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/2648/2648583_s.gif",
          "salePrice": 19.99,
          "manufacturer": "Dynex™",
          "url": "http://www.bestbuy.com/site/dynex-6-hdmi-cable/2648583.p?id=1218342637879&skuId=2648583&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/2648/2648583_sc.jpg",
          "customerReviewCount": 2511,
          "category": "HDMI Cables",
          "objectID": 2648583,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "LG - 8x External Double-Layer DVD±RW/CD-RW Drive",
          "shortDescription": "USB 2.0 interface; slim, portable design; up to 6x DVD+R DL and DVD-R DL, 8x DVD+R and DVD-R write speeds; up to 6x DVD+RW and DVD-RW rewrite speeds; 24x24x24 CD-RW",
          "bestSellingRank": 66,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1802/1802006_s.gif",
          "salePrice": 39.99,
          "manufacturer": "LG",
          "url": "http://www.bestbuy.com/site/lg-8x-external-double-layer-dvdrw-cd-rw-drive/1802006.p?id=1219064878253&skuId=1802006&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/1802/1802006_sc.jpg",
          "customerReviewCount": 726,
          "category": "External DVD Drives",
          "objectID": 1802006,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Insignia™ - 6' HDMI Cable - Black",
          "shortDescription": "Connects 1 HDMI component to another HDMI component via HDMI connection; supports 1080p high-definition resolution; up to 10.2 Gbps bandwidth; 6' length",
          "bestSellingRank": 71,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/4127/4127007_s.gif",
          "salePrice": 19.99,
          "manufacturer": "Insignia™",
          "url": "http://www.bestbuy.com/site/insignia-6-hdmi-cable-black/4127007.p?id=1219096725673&skuId=4127007&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/4127/4127007_sc.jpg",
          "customerReviewCount": 24,
          "category": "HDMI Cables",
          "objectID": 4127007,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Dynex™ - 3.9' HDMI Cable - Black",
          "shortDescription": "Connects 2 HDMI components; supports HEC (HDMI Ethernet Channel) and ARC (Audio Return Channel)",
          "bestSellingRank": 72,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/5681/5681548_s.gif",
          "salePrice": 9.99,
          "manufacturer": "Dynex™",
          "url": "http://www.bestbuy.com/site/dynex-3-9-hdmi-cable-black/5681548.p?id=1218679202438&skuId=5681548&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/5681/5681548_sc.jpg",
          "customerReviewCount": 1571,
          "category": "HDMI Cables",
          "objectID": 5681548,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Ultra Plus 16GB microSDHC Class 10 UHS-1 Memory Card",
          "shortDescription": "Compatible with most devices with a microSDHC card slot; 16GB capacity; temperature-, X-ray-, shock- and waterproof design; writeable label",
          "bestSellingRank": 73,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142599_s.gif",
          "salePrice": 14.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-ultra-plus-16gb-microsdhc-class-10-uhs-1-memory-card/3142599.p?id=1219088213592&skuId=3142599&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/3142/3142599_sc.jpg",
          "customerReviewCount": 140,
          "category": "Micro SD Memory",
          "objectID": 3142599,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Cruzer 8GB USB 2.0 Flash Drive - Black",
          "shortDescription": "For PC, Mac and Linux; retractable USB connector; drag-and-drop file backup; includes SanDisk SecureAccess software; access to 2GB of YuuWaa Cloud storage",
          "bestSellingRank": 75,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/9226/9226777_s.gif",
          "salePrice": 5.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-cruzer-8gb-usb-2-0-flash-drive-black/9226777.p?id=1218062421405&skuId=9226777&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/9226/9226777_sc.jpg",
          "customerReviewCount": 576,
          "category": "USB Flash Drives",
          "objectID": 9226777,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Ultra 8GB SDHC UHS-I Class 10 Memory Card",
          "shortDescription": "Compatible with most digital cameras and camcorders with a SDHC slot; 8GB capacity; up to 30MB/sec. read and write speeds; durable design",
          "bestSellingRank": 78,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/5577/5577795_s.gif",
          "salePrice": 12.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-ultra-8gb-sdhc-uhs-i-class-10-memory-card/5577795.p?id=1218665493050&skuId=5577795&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/5577/5577795_sc.jpg",
          "customerReviewCount": 1543,
          "category": "Secure Digital",
          "objectID": 5577795,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "HP - 564 3-Pack Cyan/Magenta/Yellow Original Ink Cartridges - Cyan/Magenta/Yellow",
          "shortDescription": "Compatible with select HP Photosmart printers; cyan, magenta and yellow ink; 20 sheets of photo paper",
          "bestSellingRank": 82,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6502/6502226_54x54_s.gif",
          "salePrice": 29.99,
          "manufacturer": "HP",
          "url": "http://www.bestbuy.com/site/hp-564-3-pack-cyan-magenta-yellow-original-ink-cartridges-cyan-magenta-yellow/6502226.p?id=1218752782021&skuId=6502226&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6502/6502226_105x105_sc.jpg",
          "customerReviewCount": 1582,
          "category": "Hewlett-Packard",
          "objectID": 6502226,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Asus - 15.6\" Laptop - Intel Celeron - 4GB Memory - 500GB Hard Drive - Black",
          "shortDescription": "Windows 8.1 64-bitTechnical details: Intel&#174; Celeron&#174; processor; 15.6\" display; 4GB memory; 500GB hard driveSpecial features: HDMI output",
          "bestSellingRank": 88,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/7288/7288011_s.gif",
          "salePrice": 249.99,
          "manufacturer": "Asus",
          "url": "http://www.bestbuy.com/site/asus-15-6-laptop-intel-celeron-4gb-memory-500gb-hard-drive-black/7288011.p?id=1219262036899&skuId=7288011&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/7288/7288011_sc.jpg",
          "customerReviewCount": 4,
          "category": "PC Laptops",
          "objectID": 7288011,
          "shipping": "Free shipping",
          "salePrice_range": "201 - 500"
        },
        {
          "name": "Insignia™ - 4' Micro USB Cable - Black",
          "shortDescription": "Compatible with most micro USB-enabled devices; lets you charge and transfer data to compatible devices; sync capability; low-profile design; 4' length",
          "bestSellingRank": 94,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/5019/5019341_s.gif",
          "salePrice": 14.99,
          "manufacturer": "Insignia™",
          "url": "http://www.bestbuy.com/site/insignia-4-micro-usb-cable-black/5019341.p?id=1219106277632&skuId=5019341&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/5019/5019341_sc.jpg",
          "customerReviewCount": 92,
          "category": "Wall Chargers & Power Adapters",
          "objectID": 5019341,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Sony - PlayStation 4 (500GB)",
          "shortDescription": "Experience the evolution of gaming",
          "bestSellingRank": 95,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/8240/8240103_s.gif",
          "salePrice": 399.99,
          "manufacturer": "Sony",
          "url": "http://www.bestbuy.com/site/sony-playstation-4-500gb/8240103.p?id=1218866963585&skuId=8240103&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/8240/8240103_sc.jpg",
          "customerReviewCount": 7461,
          "category": "PS4 Consoles",
          "objectID": 8240103,
          "shipping": "Free shipping",
          "salePrice_range": "201 - 500"
        },
        {
          "name": "Microsoft Office 365 Personal (1 Mac or PC + 1 Tablet) (1-Year Subscription) - Mac/Windows",
          "shortDescription": "Access amazing tools and features, no matter where you are",
          "bestSellingRank": 97,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/5058/5058004_s.gif",
          "salePrice": 69.99,
          "manufacturer": "Microsoft",
          "url": "http://www.bestbuy.com/site/microsoft-office-365-personal-1-mac-or-pc-1-tablet-1-year-subscription-mac-windows/5058004.p?id=1219110267684&skuId=5058004&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "Software",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/5058/5058004_sc.jpg",
          "customerReviewCount": 91,
          "category": "Office Software Suites",
          "objectID": 5058004,
          "shipping": "Free shipping",
          "salePrice_range": "101 - 200"
        },
        {
          "name": "2-Year Replacement Plan - Geek Squad",
          "shortDescription": "",
          "bestSellingRank": 98,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/nonsku/default_hardlines_s.gif",
          "salePrice": 14.99,
          "url": "http://www.bestbuy.com/site/2-year-replacement-plan-geek-squad/9998166.p?id=1218318856136&skuId=9998166&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "BlackTie",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/nonsku/default_hardlines_l.jpg",
          "customerReviewCount": null,
          "category": null,
          "objectID": 9998166,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Trend Micro Internet Security (3-Device) (1-Year Subscription) - Mac/Windows",
          "shortDescription": "Defend up to 3 devices against virtual intruders and online threats",
          "bestSellingRank": 101,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/5147/5147463_s.gif",
          "salePrice": 49.99,
          "manufacturer": "Trend Micro",
          "url": "http://www.bestbuy.com/site/trend-micro-internet-security-3-device-1-year-subscription-mac-windows/5147463.p?id=1219112460836&skuId=5147463&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "Software",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/5147/5147463_sc.jpg",
          "customerReviewCount": 6,
          "category": "Computer Security Software",
          "objectID": 5147463,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "Apple® - $15 iTunes Gift Card",
          "shortDescription": "Redeemable at the iTunes store, iBookstore or the App Store; redeemable for music, movies, eBooks, apps and more; $15 value",
          "bestSellingRank": 106,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/3695/3695167_s.gif",
          "salePrice": 15.0,
          "manufacturer": "Apple®",
          "url": "http://www.bestbuy.com/site/apple-15-itunes-gift-card/3695167.p?id=1219093057698&skuId=3695167&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/3695/3695167_sc.jpg",
          "customerReviewCount": null,
          "category": "iTunes Cards",
          "objectID": 3695167,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "WD - My Passport Ultra 1TB External USB 3.0 Hard Drive - Black",
          "shortDescription": "USB 3.0 interface; password protection; hardware encryption; data transfer rates up to 480 Mbps",
          "bestSellingRank": 109,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/9028/9028431_s.gif",
          "salePrice": 69.99,
          "manufacturer": "WD",
          "url": "http://www.bestbuy.com/site/wd-my-passport-ultra-1tb-external-usb-3-0-hard-drive-black/9028431.p?id=1218971610403&skuId=9028431&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/9028/9028431_sc.jpg",
          "customerReviewCount": 642,
          "category": "External Hard Drives",
          "objectID": 9028431,
          "shipping": "Free shipping",
          "salePrice_range": "101 - 200"
        },
        {
          "name": "Apple® - USB Power Adapter - White",
          "shortDescription": "Compatible with all iPhone&#174; and iPod models",
          "bestSellingRank": 114,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6653/6653042_54x54_s.gif",
          "salePrice": 18.99,
          "manufacturer": "Apple®",
          "url": "http://www.bestbuy.com/site/apple-usb-power-adapter-white/6653042.p?id=1218803449615&skuId=6653042&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6653/6653042_105x105_sc.jpg",
          "customerReviewCount": 78,
          "category": "Adapters",
          "objectID": 6653042,
          "shipping": null,
          "salePrice_range": "1 - 50"
        },
        {
          "name": "SanDisk - Extreme PLUS 32GB microSDHC UHS-I Class U-1 Memory Card",
          "shortDescription": "Compatible with most devices with a microSDHC slot; includes SD/SDHC/SDXC adapter; 32GB capacity; Ultra High Speed (UHS-I) bus architecture",
          "bestSellingRank": 115,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/9387/9387066_s.gif",
          "salePrice": 34.99,
          "manufacturer": "SanDisk",
          "url": "http://www.bestbuy.com/site/sandisk-extreme-plus-32gb-microsdhc-uhs-i-class-u-1-memory-card/9387066.p?id=1219014148623&skuId=9387066&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/9387/9387066_sc.jpg",
          "customerReviewCount": 271,
          "category": "Secure Digital",
          "objectID": 9387066,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        },
        {
          "name": "ZAGG - InvisibleSHIELD Glass Screen Protector for Apple® iPhone® 5, 5s and 5c",
          "shortDescription": "Compatible with Apple iPhone 5, 5s and 5c; tempered-glass material; smooth touch; tapered edges; easy-to-install design",
          "bestSellingRank": 117,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/3699/3699012_s.gif",
          "salePrice": 39.99,
          "manufacturer": "ZAGG",
          "url": "http://www.bestbuy.com/site/zagg-invisibleshield-glass-screen-protector-for-apple-iphone-5-5s-and-5c/3699012.p?id=1219093056982&skuId=3699012&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/3699/3699012_sc.jpg",
          "customerReviewCount": 215,
          "category": "Screen Protectors",
          "objectID": 3699012,
          "shipping": "Free shipping",
          "salePrice_range": "1 - 50"
        }
      ]
    json
    )
  end
end

