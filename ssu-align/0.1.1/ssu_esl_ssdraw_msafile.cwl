class: CommandLineTool
id: ../../../ssu_esl_ssdraw_msafile.cwl
inputs:
- id: ss_postscript_template
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_postscript_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-ssdraw
- msafile
