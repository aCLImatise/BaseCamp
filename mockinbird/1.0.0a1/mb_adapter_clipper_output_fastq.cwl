class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_adapter_clipper_output_fastq.cwl
inputs:
- id: clip_len
  doc: ''
  type: string
  inputBinding:
    prefix: --clip_len
- id: min_len
  doc: ''
  type: long
  inputBinding:
    prefix: --min_len
- id: mb_adapter_clipper
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-adapter-clipper
- output_fastq
