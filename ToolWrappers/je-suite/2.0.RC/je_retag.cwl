class: CommandLineTool
id: je_retag.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_header_dot
  doc: 'Counting starts at 1 and negative numbers can be used to start counting from
    the end '
  type: string
  inputBinding:
    position: 0
- id: in_using
  doc: "a hyphen ('-'). The order of concatenation follows the order of UMI_SLOT in\
    \ the command "
  type: string
  inputBinding:
    position: 0
- id: in_line_dot
  doc: 'For example, consider the following read name that lists 3 different sequence
    codes in '
  type: string
  inputBinding:
    position: 1
- id: in_act_gtac
  doc: 'ACTCTAC,TCTGTAC,ACTGTAG  '
  type: string
  inputBinding:
    position: 0
- id: in_null_dot
  doc: 'RGPG=String                   Read Group program group; only considered when
    RG=true  Default value: null. '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- je
- retag
