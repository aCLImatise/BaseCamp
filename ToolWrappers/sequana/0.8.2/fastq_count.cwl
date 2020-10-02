class: CommandLineTool
id: fastq_count.cwl
inputs:
- id: in_input_fastq_gzipped
  doc: "input fastq gzipped or not\n"
  type: File
  inputBinding:
    prefix: --input
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_count
