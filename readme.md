# OU Campus Responsive Picture Snippet

## Implementation Updates

- Review and set up [image set sizes in OU Campus](https://vimeo.com/353812283) using consistent extension naming (reference below)
- Update XSL in snippets.xsl and functions.xsl
- Implement snippet in Editable Region
- Picture is setup using Bootstrap viewports but can be modified as necessary: `992px`, `768px`, `480px` 
 
## Image size setup

This example uses the following image size set with "crop" setting (note: you can use different resolutions):

| Size   | Suffix | Width | Height |
|--------|--------|-------|--------|
| Small  | `-sm`    | 1200  | 1200   |
| Medium | `-md`    | 800   | 1200   |
| Large  | `-lg`    | 768   | 480    |
| XL     | `-xl`    | 480   | 300    |