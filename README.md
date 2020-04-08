# wordpress

wordpress is miscellaneous tools for WordPress blog server.

## Usage:

```bash
$ unzip -p katsumiinoue.wordpress.com-2020-04-*.zip */*.001.xml | xsltproc wp-post-titles.xsl -
```

## wp-post-titles.xsl:

XSLT(XSL Transformation) template. Outputs tab-separated 3 columns text. #1:Title, #2:URL, #3:Date
Copied from https://blog.bimajority.org/2019/12/30/a-little-xslt-hack-for-extracting-titles-from-wordpress-exports/ .

I wrote about this at my blog page. https://katsumiinoue.wordpress.com/2020/04/08/transform-wordpress-export/
