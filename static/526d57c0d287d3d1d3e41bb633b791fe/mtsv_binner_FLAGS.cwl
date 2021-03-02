class: CommandLineTool
id: mtsv_binner_FLAGS.cwl
inputs:
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mtsv-binner
- FLAGS
