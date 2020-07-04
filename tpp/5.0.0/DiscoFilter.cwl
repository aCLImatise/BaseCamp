class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/DiscoFilter.cwl
inputs:
- id: mzm_lslash_mz_xml_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dia_windows_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- DiscoFilter
