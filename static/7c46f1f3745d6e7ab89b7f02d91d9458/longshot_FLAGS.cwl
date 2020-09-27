class: CommandLineTool
id: longshot_FLAGS.cwl
inputs:
- id: in_ref
  doc: ''
  type: string
  inputBinding:
    prefix: --ref
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    prefix: --bam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- longshot
- FLAGS
