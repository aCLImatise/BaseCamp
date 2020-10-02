class: CommandLineTool
id: sequana_fastq_count.cwl
inputs:
- id: in_input_fastq_gzipped
  doc: "input fastq gzipped or not\n"
  type: File
  inputBinding:
    prefix: --input
- id: in_fast_q_count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_fastq_count
