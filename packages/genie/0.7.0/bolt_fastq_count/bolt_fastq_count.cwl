class: CommandLineTool
id: bolt_fastq_count.cwl
inputs:
- id: in_file_path
  doc: Input FASTQ file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_count
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- fastq
- count
