class: CommandLineTool
id: sbpipe.cwl
inputs:
- id: in_create_project
  doc: create a project structure
  type: string?
  inputBinding:
    prefix: --create-project
- id: in_simulate
  doc: run time course simulations
  type: File?
  inputBinding:
    prefix: --simulate
- id: in_parameter_scan_one
  doc: run parameter scans for 1 model variable
  type: File?
  inputBinding:
    prefix: --parameter-scan1
- id: in_parameter_scan_two
  doc: run parameter scans for 2 model variables
  type: File?
  inputBinding:
    prefix: --parameter-scan2
- id: in_parameter_estimation
  doc: run parameter estimations
  type: File?
  inputBinding:
    prefix: --parameter-estimation
- id: in_license
  doc: show the license and exit
  type: boolean?
  inputBinding:
    prefix: --license
- id: in_no_color
  doc: print logging messages without colors
  type: boolean?
  inputBinding:
    prefix: --nocolor
- id: in_logo
  doc: show the logo and exit
  type: boolean?
  inputBinding:
    prefix: --logo
- id: in_quiet
  doc: do not print any log
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_level
  doc: override the log level
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_verbose
  doc: print debugging output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sbpipe
