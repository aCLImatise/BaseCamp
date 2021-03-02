class: CommandLineTool
id: check_comparate_design_file.py.cwl
inputs:
- id: in_design
  doc: "Input Design File. See BASE User Guide for formatting\nhelp [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --design
- id: in_comp_num
  doc: Number of comparates
  type: long?
  inputBinding:
    prefix: --compNum
- id: in_name_log_file
  doc: Name of log file that checks design file
  type: File?
  inputBinding:
    prefix: --out
- id: in_check_usersupplied_file
  doc: Check user-supplied Pre-Bayesian design file for correct formatting and
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- check_comparate_design_file.py
