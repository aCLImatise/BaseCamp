class: CommandLineTool
id: ri.cwl
inputs:
- id: names
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: ', --[no-]interactive           In interactive mode you can repeatedly look
    up methods with autocomplete.'
  type: boolean
  inputBinding:
    prefix: -i
- id: a
  doc: ', --[no-]all                   Show all documentation for a class or module.'
  type: boolean
  inputBinding:
    prefix: -a
- id: l
  doc: ', --[no-]list                  List classes ri knows about. --[no-]pager                 Send
    output directly to stdout, rather than to a pager.'
  type: boolean
  inputBinding:
    prefix: -l
- id: t
  doc: Synonym for --no-pager
  type: boolean
  inputBinding:
    prefix: -T
- id: width
  doc: Set the width of the output.
  type: string
  inputBinding:
    prefix: --width
- id: server
  doc: '[PORT]              Run RDoc server on the given port. The default port is
    8214.'
  type: boolean
  inputBinding:
    prefix: --server
- id: format
  doc: 'Uses the selected formatter. The default formatter is bs for paged output
    and ansi otherwise. Valid formatters are: ansi bs markdown rdoc'
  type: string
  inputBinding:
    prefix: --format
- id: dump
  doc: Dumps data from an ri cache or data file
  type: string
  inputBinding:
    prefix: --dump
outputs: []
cwlVersion: v1.1
baseCommand:
- ri
