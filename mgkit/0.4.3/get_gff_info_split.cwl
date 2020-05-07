class: CommandLineTool
id: get_gff_info_split.cwl
inputs:
- id: prefix
  doc: 'Prefix for the file name in output  [default: split]'
  type: string
  inputBinding:
    prefix: --prefix
- id: number
  doc: 'Number of chunks into which split the GFF file [default: 10]'
  type: long
  inputBinding:
    prefix: --number
- id: gzip
  doc: gzip output files
  type: boolean
  inputBinding:
    prefix: --gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- split
