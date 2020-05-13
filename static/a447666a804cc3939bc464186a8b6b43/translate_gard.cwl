class: CommandLineTool
id: translate_gard.cwl
inputs:
- id: i
  doc: input filename (like CD2.nex.GARD.csv)  [required]
  type: boolean
  inputBinding:
    prefix: -i
- id: j
  doc: json filename (like CD2.nex.out.json    [required]
  type: boolean
  inputBinding:
    prefix: -j
- id: o
  doc: output filename                         [required]
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- translate-gard
