class: CommandLineTool
id: gff_to_bed.sh.cwl
inputs:
- id: in_output_directory_optional
  doc: "file\n-o output directory (optional). By default the file is placed in the\
    \ same location as input\n-C include a supplied word in cds\n-L include locus\
    \ tag in cds\n-q database chraracter delimiter, default \"_\"\n-Q query field\
    \ to retrieve (l=left, r=right), default right\n-u uniq mode. Remove duplicates\n\
    -s string to ad at the end of the outputted file\n-v version\n-h display usage\
    \ message"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gff_to_bed.sh
