class: CommandLineTool
id: dot2ct.cwl
inputs:
- id: in_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File
  inputBinding:
    prefix: --quiet
- id: in_bracket_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File
  outputBinding:
    glob: $(inputs.in_quiet)
cwlVersion: v1.1
baseCommand:
- dot2ct
