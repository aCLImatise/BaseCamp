class: CommandLineTool
id: alevin_fry_quant_FLAGS.cwl
inputs:
- id: in_tg_map
  doc: ''
  type: string?
  inputBinding:
    prefix: --tg-map
- id: in_input_dir
  doc: ''
  type: string?
  inputBinding:
    prefix: --input-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- alevin-fry
- quant
- FLAGS
