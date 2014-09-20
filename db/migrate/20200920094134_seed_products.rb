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
        }
      ]
    json
    )
  end
end

