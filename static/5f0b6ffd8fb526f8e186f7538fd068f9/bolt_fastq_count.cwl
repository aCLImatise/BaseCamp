class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bolt_fastq_count.cwl
inputs:
- id: file_path
  doc: Input FASTQ file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- fastq
- count
