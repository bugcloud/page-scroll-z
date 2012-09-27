# pageScrollZ - jQuery Plugin

ページ内へのid指定リンクをスクロールして移動させるjQueryプラグインです。
jQuery Mobileと一緒に使っても問題ないように、対象のリンクをしぼって適用できます。

## How to use
HTMLでscriptを読み込みます。easingプラグインを使えます。
```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.pageScrollZ.js"></script>
```

$(SELECTOR).pageScrollZ()でクリック時に
**href**
で指定したidへスクロールします。

```javascript
$(function() {
  $("a.page-scroll-z").pageScrollZ()
})
```

hrefにフルのURLを指定した場合でも動作します。
指定先が別階層のページだった場合、リダイレクトされます。
```html
<a href="#section2" data-role="button" data-theme="b" class="page-scroll-z">#2</a>
<a href="http://yourdomain.xxx/#section3" data-role="button" data-theme="b" class="page-scroll-z">#3</a>
```

## Options

*scrollContent*
スクロールさせるコンテンツのcssセレクタを文字列で指定します。デフォルト値は
**html,body**

*animation*
スクロール時にアニメーションするかどうかを
**true**
 or
**false**
で指定します。デフォルト値は
**true**
です。

*animationSpeed*
スクロールするスピードを数値で指定します。デフォルト値は
**500**
です。

*easingFunction*
スクロールのイージングを文字列で指定します。デフォルト値は
**swing**
です。

*fixTop*
スクロールが止まる位置を文字列で指定することで調整できます。デフォルト値は
**0**
です。
**100**,
**-200**
といった指定をします。
## Methods

*switchAnimation(bool)*
スクロール時のアニメーションを停止、または再開します。
パラメータには
**true**
 or
**false**
を指定します。

## Sample
http://bugcloud.github.com/page-scroll-z/

## License
MIT
