class: CommandLineTool
id: bolt_fastq_count.cwl
inputs:
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
- id: file_path
  doc: Input FASTQ file (*require)
  type: string
  inputBinding:
    prefix: --filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- fastq
- count
