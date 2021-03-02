class: CommandLineTool
id: luac.cwl
inputs:
- id: in_list_use_l
  doc: list (use -l -l for full listing)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_output_file_default
  doc: output to file 'name' (default is "luac.out")
  type: File?
  inputBinding:
    prefix: -o
- id: in_parse_only
  doc: parse only
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_strip_debug_information
  doc: strip debug information
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_show_version_information
  doc: show version information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_filenames
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: output to file 'name' (default is "luac.out")
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_default)
hints: []
cwlVersion: v1.1
baseCommand:
- luac
