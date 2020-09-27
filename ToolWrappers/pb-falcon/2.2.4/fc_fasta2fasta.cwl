class: CommandLineTool
id: fc_fasta2fasta.cwl
inputs:
- id: in_gzip
  doc: "Compress intermediate fasta with gzip. (Not currently\nimplemented.)"
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_z_mw_start
  doc: "Ignore the zmw number in the fasta header. Instead,\nuse a global counter,\
    \ starting at this numer.\n"
  type: long
  inputBinding:
    prefix: --zmw-start
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_fasta2fasta
