class: CommandLineTool
id: convertsegfilestopdf.cwl
inputs:
- id: in_where
  doc: "pagedir:  input directory for image files\npagesubstr:  Use 'allfiles' to\
    \ convert all files\nin the directory\nmaskdir:  input directory for mask files;\n\
    use 'skip' to skip\nmasksubstr:  Use 'allfiles' to convert all files\nin the directory;\
    \ 'skip' to skip\nres:  Input resolution of each image;\nassumed to all be the\
    \ same\ntype: compression used for non-image regions:\n0: default (G4 encoding)\n\
    1: JPEG encoding\n2: G4 encoding\n3: PNG encoding\nthresh:  threshold for binarization;\
    \ use 0 for default\nboxaafile: Optional file of 'image' regions within\neach\
    \ page.  This contains a boxa for each\npage, consisting of a set of regions.\n\
    Use 'skip' to skip.\nscalefactor:  Use to scale down the image regions\ntitle:\
    \  Use 'none' to omit\nfileout:  Output pdf file\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertsegfilestopdf
