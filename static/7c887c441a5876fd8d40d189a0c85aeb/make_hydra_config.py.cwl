class: CommandLineTool
id: make_hydra_config.py.cwl
inputs:
- id: in_basic_input_sample
  doc: Basic input sample file (sample_id[TAB]sample_file_path)
  type: File?
  inputBinding:
    prefix: -i
- id: in_how_many_pairs
  doc: How many pairs to sample (def. 100000)
  type: long?
  inputBinding:
    prefix: -s
- id: in_num_allowed_def
  doc: The num. of units of variation that should be allowed (def. 8)
  type: long?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- make_hydra_config.py
