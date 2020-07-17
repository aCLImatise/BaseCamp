class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/generate_plot.py.cwl
inputs:
- id: define_location_working
  doc: Define the location of your working directory
  type: File
  inputBinding:
    prefix: --working_directory
- id: run_type
  doc: type of summary to use, `generic` or `specific`
  type: string
  inputBinding:
    prefix: --run_type
- id: no_r
  doc: To avoid to run R. It will just create the R script file in the working directory
  type: boolean
  inputBinding:
    prefix: --no_r
- id: quiet
  doc: Disable the info logs, displays only errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: other
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_plot.py
