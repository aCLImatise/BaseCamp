class: CommandLineTool
id: mb_adapter_clipper_output_fastq.cwl
inputs:
- id: in_min_len
  doc: ''
  type: long
  inputBinding:
    prefix: --min_len
- id: in_clip_len
  doc: ''
  type: string
  inputBinding:
    prefix: --clip_len
- id: in_mb_adapter_clipper
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-adapter-clipper
- output_fastq
