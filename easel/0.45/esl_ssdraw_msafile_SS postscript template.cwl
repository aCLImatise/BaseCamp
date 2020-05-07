class: CommandLineTool
id: esl_ssdraw_msafile_SS postscript template.cwl
inputs:
- id: output_postscript_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-ssdraw
- msafile
- SS postscript template
