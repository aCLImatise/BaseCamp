class: CommandLineTool
id: calculate_seqlen.sh.cwl
inputs:
- id: in_output_directory_optional
  doc: "file\n-o output directory (optional). By default the file is replaced in the\
    \ same location\n-n file name (optional). By default is the same name with .length\
    \ extension\n-r remove \">\" (greater-than) symbol from fasta header\n-v version\n\
    -h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calculate_seqlen.sh
