class: CommandLineTool
id: byobu_ugraph.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: ': File to read data points from. (only required if no command specified).'
  type: File
  inputBinding:
    prefix: -f
- id: m
  doc: ': Minimum value (default=0).'
  type: string
  inputBinding:
    prefix: -m
- id: n
  doc: ': Supress output of newline character.'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: ': Specify number of data points in graph (default=5).'
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: ': Do not rotate file <file> (default is to rotate). Option implies file <file>
    should not be written to so a command cannot follow script options in this case.'
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: ": 'byobu-ulevel' theme to use (default=vbars_8)."
  type: string
  inputBinding:
    prefix: -t
- id: x
  doc: ': Maximum value (default=100).'
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- byobu-ugraph
