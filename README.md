# Mini Map

特定のアイテムをオフハンドに持つとミニマップが表示されるデータパック  
Show a mini-map when certain items are held in the offhand  

## 動作確認済みバージョン / Verified minecraft versions

- 1.19

## 使用しているエンティティUUID

0-0-29-0-9b

## 使い方 / How To Use

ワールドのデータパックとリソースパックに入れてね。  
Put it in your world's datapack and your resource pack.  
  
オフハンドにコンパスを持つと、11x11のミニマップが表示されます。  
オフハンドにリカバリーコンパスを持つと、17x17のミニマップが表示されます。  
If you hold the compass in your offhand, you will see an 11x11 mini-map.  
If you hold the recovery compass in your offhand, you will see a 17x17 mini-map.  
  
花やハシゴなどの小物も表示されるよ！  
洞窟などの形も綺麗に表示されます！  
It'll even show you little things like flowers, ladders, etc.!  
And shapes like caves, etc. will show up nicely!  
  
![ミニマップサンプル](https://user-images.githubusercontent.com/39216832/184330751-bee37a10-9026-420b-9767-cb07c09d2e3e.png)

## 対応アイテムの変え方 / How to change the items needed to display the mini-map.

mini_map/tags/items/mini_map_normalやmini_map/tags/items/mini_map_wideを作成して  
ミニマップの表示に必要なアイテムを変更できます。  
You can change the items needed to display the mini-map by create the corresponding item tags.  

```json
通常サイズのミニマップを表示させるためのアイテムを変更する場合  
To change an item to display a normal size minimap  
  
mini_map/tags/items/mini_map_normal  
{  
    "replace": true,  
    "values": [  
        "minecraft:compass"  
    ]  
}
```

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
