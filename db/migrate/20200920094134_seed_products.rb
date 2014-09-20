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
          "name": "Geek Squad - Tech Support Membership (1 Year)",
          "shortDescription": "Who has time for frustrating computer issues? With unlimited coverage for all your computing issues, Geek Squad Tech Support is the expert resource you need to keep your PC, Mac or tablet (up to three devices) up and running, no matter where you bought them. Get convenient help any way you'd like: in store, online or on the phone.",
          "bestSellingRank": 7,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/1853/1853259_s.gif",
          "salePrice": 199.99,
          "manufacturer": "Geek Squad",
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
          "name": "Apple - 3.3' Lightning-to-USB 2.0 Cable",
          "shortDescription": "Compatible with most Apple&#174; iPad&#174;, iPhone&#174; and iPod&#174; models with a Lightning connector; charges and syncs your device; reversible design",
          "bestSellingRank": 12,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6652/6652043_s.gif",
          "salePrice": 19.99,
          "manufacturer": "Apple",
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
          "name": "Apple - TV",
          "shortDescription": "3rd generation; compatible with most HDTVs with an HDMI interface; allows you to stream movies, TV shows, photos and music from your computer to your HDTV or home theater system; 802.11a/b/g/n wireless LAN. \nLearn more about smart products.",
          "bestSellingRank": 46,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/4854/4854433_s.gif",
          "salePrice": 89.99,
          "manufacturer": "Apple",
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
          "name": "Apple - EarPods™ with Remote and Mic - White",
          "shortDescription": "In-line remote and mic; compatible with select Apple iPhone, iPod and iPad models; sweat- and water-resistant design",
          "bestSellingRank": 52,
          "thumbnailImage": "http://img.bbystatic.com/BestBuy_US/images/products/6848/6848136_s.gif",
          "salePrice": 29.99,
          "manufacturer": "Apple",
          "url": "http://www.bestbuy.com/site/apple-earpods-with-remote-and-mic-white/6848136.p?id=1218809156050&skuId=6848136&cmp=RMX&ky=2d3GfEmNIzjA0vkzveHdZEBgpPCyMnLTJ",
          "type": "HardGood",
          "image": "http://img.bbystatic.com/BestBuy_US/images/products/6848/6848136_sc.jpg",
          "customerReviewCount": 2524,
          "category": "Headphones",
          "objectID": 6848136,
          "shipping": null,
          "salePrice_range": "1 - 50"
        }
      ]
    json
    )
  end
end

