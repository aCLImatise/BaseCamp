class: CommandLineTool
id: tfr_hdf5.py.cwl
inputs:
- id: in_data_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hdf_five_file
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- tfr_hdf5.py
