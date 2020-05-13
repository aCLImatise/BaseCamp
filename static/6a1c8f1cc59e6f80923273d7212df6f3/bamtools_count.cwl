class: CommandLineTool
id: bamtools_count.cwl
inputs:
- id: in
  doc: the input BAM file(s) [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
- id: region
  doc: genomic region. Index file is recommended for better performance, and is used
    automatically if it exists. See 'bamtools help index' for more details on creating
    one
  type: string
  inputBinding:
    prefix: -region
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- count
