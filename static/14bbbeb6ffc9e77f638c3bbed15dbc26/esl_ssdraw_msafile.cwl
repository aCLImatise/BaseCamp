class: CommandLineTool
id: esl_ssdraw_msafile.cwl
inputs:
- id: in_ss_postscript_template
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_postscript_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_postscript_file_name
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_postscript_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- esl-ssdraw
- msafile
