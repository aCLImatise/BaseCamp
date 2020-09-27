class: CommandLineTool
id: _fdnapenny.cwl
inputs:
- id: in_weights
  doc: properties (no help text) properties value
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_how_often
  doc: "integer    [100] How often to report, in trees (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -howoften
- id: in_how_many
  doc: "integer    [1000] How many groups of trees (Any integer\nvalue)"
  type: boolean
  inputBinding:
    prefix: -howmany
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -outgrno
- id: in_do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_step_box
  doc: boolean    [N] Print out steps in each site
  type: boolean
  inputBinding:
    prefix: -stepbox
- id: in_an_cseq
  doc: boolean    [N] Print sequences at all nodes of tree
  type: boolean
  inputBinding:
    prefix: -ancseq
- id: in_alignments
  doc: '[-outfile]           outfile    [*.fdnapenny] Phylip dnapenny program output'
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _fdnapenny
