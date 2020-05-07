class: CommandLineTool
id: bolt_fastq_split.cwl
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
- id: split
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
- id: fq
  doc: Output FASTQ1 file (*require)
  type: string
  inputBinding:
    prefix: --fq
- id: fq2
  doc: Output FASTQ2 file (*require)
  type: string
  inputBinding:
    prefix: --fq2
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- fastq
- split
