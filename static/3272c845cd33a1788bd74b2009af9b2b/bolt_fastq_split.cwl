class: CommandLineTool
id: bolt_fastq_split.cwl
inputs:
- id: in_file_path
  doc: Input FASTQ file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_fq
  doc: Output FASTQ1 file (*require)
  type: File?
  inputBinding:
    prefix: --fq
- id: in_fq_two
  doc: Output FASTQ2 file (*require)
  type: File?
  inputBinding:
    prefix: --fq2
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
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fq
  doc: Output FASTQ1 file (*require)
  type: File?
  outputBinding:
    glob: $(inputs.in_fq)
- id: out_fq_two
  doc: Output FASTQ2 file (*require)
  type: File?
  outputBinding:
    glob: $(inputs.in_fq_two)
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- fastq
- split
