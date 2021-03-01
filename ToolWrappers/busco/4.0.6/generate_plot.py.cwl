class: CommandLineTool
id: generate_plot.py.cwl
inputs:
- id: in_define_location_your
  doc: Define the location of your working directory
  type: File?
  inputBinding:
    prefix: --working_directory
- id: in_run_type
  doc: type of summary to use, `generic` or `specific`
  type: string?
  inputBinding:
    prefix: --run_type
- id: in_no_r
  doc: To avoid to run R. It will just create the R script file in the working directory
  type: boolean?
  inputBinding:
    prefix: --no_r
- id: in_quiet
  doc: Disable the info logs, displays only errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_var_4
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_other
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- generate_plot.py
