class: CommandLineTool
id: basenji_sad_table.py.cwl
inputs:
- id: in_compute_quantiles_using
  doc: Compute quantiles using separated SAD HDF5.
  type: File?
  inputBinding:
    prefix: -q
- id: in_sad_h_five_file
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_sad_table.py
