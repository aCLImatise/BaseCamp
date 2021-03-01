class: CommandLineTool
id: pslMrnaCover.cwl
inputs:
- id: in_minsize
  doc: '- default 100.  Minimum size of mRNA considered'
  type: long?
  inputBinding:
    prefix: -minSize
- id: in_list_zero
  doc: "- List accessions that don't align in zero.tab"
  type: string?
  inputBinding:
    prefix: -listZero
- id: in_mrna_dot_psl
  doc: ''
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
- pslMrnaCover
