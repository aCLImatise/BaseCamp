class: CommandLineTool
id: byobu_ugraph.cwl
inputs:
- id: in_file_read_points
  doc: ": File to read data points from.\n(only required if no command specified)."
  type: File
  inputBinding:
    prefix: -f
- id: in_minimum_value_default
  doc: ': Minimum value (default=0).'
  type: long
  inputBinding:
    prefix: -m
- id: in_supress_output_newline
  doc: ': Supress output of newline character.'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_specify_number_data
  doc: ": Specify number of data points in graph\n(default=5)."
  type: long
  inputBinding:
    prefix: -p
- id: in_rotate_file_default
  doc: ": Do not rotate file <file> (default is to rotate).\nOption implies file <file>\
    \ should not be written to\nso a command cannot follow script options in this\
    \ case."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_theme_use_defaultvbars
  doc: ": 'byobu-ulevel' theme to use (default=vbars_8)."
  type: long
  inputBinding:
    prefix: -t
- id: in_maximum_value_default
  doc: ': Maximum value (default=100).'
  type: long
  inputBinding:
    prefix: -x
- id: in_by_obu_u_level_dot
  doc: 'Usage: byobu-ugraph [options] [command [args...]]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- byobu-ugraph
