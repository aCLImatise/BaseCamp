class: CommandLineTool
id: htsbox_peovlp.cwl
inputs:
- id: b
  doc: barcode file (overriding -B) []
  type: File
  inputBinding:
    prefix: -b
- id: b
  doc: barcode length [0,0]
  type:
  - long
  inputBinding:
    prefix: -B
- id: t
  doc: number of threads [2]
  type: long
  inputBinding:
    prefix: -t
- id: l
  doc: min read/fragment length to output [30]
  type: long
  inputBinding:
    prefix: -l
- id: o
  doc: min overlap length [15]
  type: long
  inputBinding:
    prefix: -o
- id: p
  doc: output PE reads to STR.R[12].fq.gz (overriding -P) [discard pe]
  type: string
  inputBinding:
    prefix: -p
- id: t
  doc: trim INT-bp from 5'-end [0]
  type: long
  inputBinding:
    prefix: -T
- id: p
  doc: output paired reads also to stdout [discard pe]
  type: boolean
  inputBinding:
    prefix: -P
- id: d
  doc: tabular output for debugging
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- peovlp
