class: CommandLineTool
id: htsbox_qualbin.cwl
inputs:
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: n
  doc: number of records in buffer [1000000]
  type: long
  inputBinding:
    prefix: -n
- id: m
  doc: number of bins (0, 1, 2, 3 or 7) [2]
  type: long
  inputBinding:
    prefix: -m
- id: b
  doc: the input is a BAM file
  type: boolean
  inputBinding:
    prefix: -b
- id: u
  doc: output uncompressed BAM (force -b)
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- qualbin
