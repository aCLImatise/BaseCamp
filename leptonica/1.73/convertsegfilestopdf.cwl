class: CommandLineTool
id: convertsegfilestopdf.cwl
inputs:
- id: where
  doc: "pagedir:  input directory for image files pagesubstr:  Use 'allfiles' to convert\
    \ all files in the directory maskdir:  input directory for mask files; use 'skip'\
    \ to skip  masksubstr:  Use 'allfiles' to convert all files in the directory;\
    \ 'skip' to skip res:  Input resolution of each image; assumed to all be the same\
    \ type: compression used for non-image regions: 0: default (G4 encoding) 1: JPEG\
    \ encoding 2: G4 encoding 3: PNG encoding thresh:  threshold for binarization;\
    \ use 0 for default boxaafile: Optional file of 'image' regions within each page.\
    \  This contains a boxa for each page, consisting of a set of regions. Use 'skip'\
    \ to skip. scalefactor:  Use to scale down the image regions title:  Use 'none'\
    \ to omit fileout:  Output pdf file"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- convertsegfilestopdf
