class: CommandLineTool
id: fermi_unitig.cwl
inputs:
- id: reads_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: min match [30]
  type: long
  inputBinding:
    prefix: -l
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: r
  doc: rank file [null]
  type: File
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- unitig
