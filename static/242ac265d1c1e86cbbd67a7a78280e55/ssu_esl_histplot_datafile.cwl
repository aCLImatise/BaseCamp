class: CommandLineTool
id: ssu_esl_histplot_datafile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-histplot
- datafile
