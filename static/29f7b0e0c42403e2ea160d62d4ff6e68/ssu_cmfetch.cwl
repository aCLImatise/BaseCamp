class: CommandLineTool
id: ../../../ssu_cmfetch.cwl
inputs:
- id: second_cmdline_arg
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_cm_file_f
  doc: ': output CM to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: output_cm_file_named
  doc: ': output CM to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: index
  doc: ': index the <cmfile>, creating <cmfile>.ssi'
  type: boolean
  inputBinding:
    prefix: --index
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmfetch
