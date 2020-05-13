class: CommandLineTool
id: htsbox_bamshuf.cwl
inputs:
- id: bams_huf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: o
  doc: output to stdout
  type: boolean
  inputBinding:
    prefix: -O
- id: u
  doc: uncompressed BAM output
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: compression level [3]
  type: long
  inputBinding:
    prefix: -l
- id: n
  doc: number of temporary files [64]
  type: long
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bamshuf
