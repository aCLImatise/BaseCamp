class: CommandLineTool
id: DRAM_setup.py_print_config.cwl
inputs:
- id: in_dram_setup_do_tpy
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
  dockerPull: quay.io/biocontainers/dram:1.2.2--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- print_config
