class: CommandLineTool
id: ssu_esl_ssdraw_SS postscript template.cwl
inputs:
- id: in_ssu_esl_ss_draw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ss_postscript_template
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_postscript_file_name
  doc: ''
  type: File
  inputBinding:
    position: 3
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
- ssu-esl-ssdraw
- SS postscript template
