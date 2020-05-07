class: CommandLineTool
id: esl_ssdraw_output postscript file name.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ss_postscript_template
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_postscript_file_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-ssdraw
- output postscript file name
