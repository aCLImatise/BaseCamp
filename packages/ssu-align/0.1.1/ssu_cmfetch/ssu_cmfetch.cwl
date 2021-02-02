class: CommandLineTool
id: ssu_cmfetch.cwl
inputs:
- id: in_second_cmdline_arg
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_output_cm_file_f
  doc: ': output CM to file <f> instead of stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_output_cm_file_named
  doc: ': output CM to file named <key>'
  type: File
  inputBinding:
    prefix: -O
- id: in_index
  doc: ': index the <cmfile>, creating <cmfile>.ssi'
  type: boolean
  inputBinding:
    prefix: --index
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_keyfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_key
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_cm_file_f
  doc: ': output CM to file <f> instead of stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_cm_file_f)
- id: out_output_cm_file_named
  doc: ': output CM to file named <key>'
  type: File
  outputBinding:
    glob: $(inputs.in_output_cm_file_named)
cwlVersion: v1.1
baseCommand:
- ssu-cmfetch
