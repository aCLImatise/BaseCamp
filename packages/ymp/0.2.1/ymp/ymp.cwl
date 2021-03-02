class: CommandLineTool
id: ymp.cwl
inputs:
- id: in_pdb
  doc: Drop into debugger on uncaught exception
  type: boolean?
  inputBinding:
    prefix: --pdb
- id: in_quiet
  doc: Decrease log verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Increase log verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: Specify a log file
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_install_completion
  doc: "Install command completion for the current shell. Make\nsure to have psutil\
    \ installed."
  type: boolean?
  inputBinding:
    prefix: --install-completion
- id: in_profile
  doc: Profile execution time using Yappi
  type: File?
  inputBinding:
    prefix: --profile
- id: in_env
  doc: Manipulate conda software environments These commands allow...
  type: string
  inputBinding:
    position: 0
- id: in_in_it
  doc: Initialize YMP workspace
  type: string
  inputBinding:
    position: 1
- id: in_make
  doc: Build target(s) locally
  type: string
  inputBinding:
    position: 2
- id: in_show
  doc: Show configuration properties
  type: string
  inputBinding:
    position: 3
- id: in_stage
  doc: Manipulate YMP stages
  type: string
  inputBinding:
    position: 4
- id: in_submit
  doc: Build target(s) on cluster The parameters for cluster execution...
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ymp:0.2.1--py_0
cwlVersion: v1.1
baseCommand:
- ymp
