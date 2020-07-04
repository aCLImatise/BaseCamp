class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/byobu_ugraph.cwl
inputs:
- id: file_read_points
  doc: ': File to read data points from. (only required if no command specified).'
  type: File
  inputBinding:
    prefix: -f
- id: minimum_value_default
  doc: ': Minimum value (default=0).'
  type: string
  inputBinding:
    prefix: -m
- id: supress_output_newline
  doc: ': Supress output of newline character.'
  type: boolean
  inputBinding:
    prefix: -n
- id: specify_number_data
  doc: ': Specify number of data points in graph (default=5).'
  type: string
  inputBinding:
    prefix: -p
- id: rotate_file_default
  doc: ': Do not rotate file <file> (default is to rotate). Option implies file <file>
    should not be written to so a command cannot follow script options in this case.'
  type: boolean
  inputBinding:
    prefix: -r
- id: theme_use_defaultvbars
  doc: ": 'byobu-ulevel' theme to use (default=vbars_8)."
  type: string
  inputBinding:
    prefix: -t
- id: maximum_value_default
  doc: ': Maximum value (default=100).'
  type: string
  inputBinding:
    prefix: -x
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- byobu-ugraph
