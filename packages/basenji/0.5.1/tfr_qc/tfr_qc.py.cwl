class: CommandLineTool
id: tfr_qc.py.cwl
inputs:
- id: in_number_parallel_use
  doc: 'Number of parallel threads to use [Default: 16]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_tfr_data_dir
  doc: ''
  type: string
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
- tfr_qc.py
