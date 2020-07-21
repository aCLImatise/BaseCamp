class: CommandLineTool
id: ../../../genie_fastq_split.cwl
inputs:
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
- id: fq_two
  doc: Output FASTQ2 file (*require)
  type: string
  inputBinding:
    prefix: --fq2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- fastq
- split
