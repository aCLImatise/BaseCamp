class: CommandLineTool
id: convertsegfilestops.cwl
inputs:
- id: where
  doc: "pagedir:  Input directory for page image files pagestr:  Substring for matching;\
    \ use 'allfiles' to convert all files in the page directory page_numpre:  Number\
    \ of characters in page name before number maskdir:  Input directory for mask\
    \ image files maskstr:  Substring for matching; use 'allfiles' to convert all\
    \ files in the mask directory mask_numpre:  Number of characters in mask name\
    \ before number numpost:  Number of characters in name after number maxnum:  Only\
    \ consider page numbers up to this value textscale:  Scale of text output relative\
    \ to pixs imagescale:  Scale of image output relative to pixs thresh:  threshold\
    \ for binarization; typically about 180; use 0 for default fileout:  Output p\
    \ file"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- convertsegfilestops
