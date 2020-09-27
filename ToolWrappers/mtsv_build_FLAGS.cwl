class: CommandLineTool
id: mtsv_build_FLAGS.cwl
inputs:
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-build
- FLAGS
