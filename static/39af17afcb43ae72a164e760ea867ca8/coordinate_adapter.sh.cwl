class: CommandLineTool
id: coordinate_adapter.sh.cwl
inputs:
- id: in_file_link_file
  doc: "file in bed format\n-l link file with coordinates relationship within bed\
    \ file ddbb and link reference\n-o output directory (optional). By default the\
    \ file is placed in the same location as input\n-n length to extend annotation,\
    \ default 2000\n-f file name\n-u uniq mode. Remove duplicates\n-p prokka mode.\
    \ Remove suffix of prokka\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coordinate_adapter.sh
