# OU Campus Responsive Picture Snippet

## Implementation Updates

- Review and set up [image set sizes in OU Campus](https://vimeo.com/353812283) using consistent extension naming (reference below)
- Update XSL in snippets.xsl and functions.xsl
- Implement snippet in Editable Region
- Picture is setup using Bootstrap viewports but can be modified as necessary: `992px`, `768px`, `480px` 
 
## Image size setup

This example uses the following image size set with "crop" setting (note: you can use different resolutions):

| Size   | Suffix | Width  | Height |
|--------|--------|--------|--------|
| Small  | `-sm`  | 480    | 300    |
| Medium | `-md`  | 768    | 480    |
| Large  | `-lg`  | 800    | 1200   |
| XL     | `-xl`  | 1200   | 1200   |

## Usage

Given the image within the snippet:

```html
<img src="/_resources/images/hero/students-under-trees-sm.jpg" alt="desc" width="480" height="300">
```

Outputs the following HTML:

```html
<picture>
 <source srcset="/_resources/images/hero/students-under-trees-xl.jpg" media="(min-width: 992px)">
 <source srcset="/_resources/images/hero/students-under-trees-lg.jpg" media="(min-width: 768px)">
 <source srcset="/_resources/images/hero/students-under-trees-md.jpg" media="(min-width: 480px)">
 <img src="/_resources/images/hero/students-under-trees-sm.jpg" alt="desc" width="480" height="300">
</picture>
```
