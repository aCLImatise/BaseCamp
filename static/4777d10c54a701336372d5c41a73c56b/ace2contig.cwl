class: CommandLineTool
id: ace2contig.cwl
inputs:
- id: i
  doc: file
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: prefix (output is <prefix>.contig)
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- ace2contig
