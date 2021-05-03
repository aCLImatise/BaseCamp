class: CommandLineTool
id: alevin_fry_infer_FLAGS.cwl
inputs:
- id: in_eq_labels
  doc: ''
  type: string?
  inputBinding:
    prefix: --eq-labels
- id: in_count_mat
  doc: ''
  type: string?
  inputBinding:
    prefix: --count-mat
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
- infer
- FLAGS
