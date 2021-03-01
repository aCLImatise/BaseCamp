class: CommandLineTool
id: hgFakeAgp.cwl
inputs:
- id: in_min_contig_gap
  doc: Minimum size for a gap between contigs.  Default 25
  type: long?
  inputBinding:
    prefix: -minContigGap
- id: in_min_scaffold_gap
  doc: Min size for a gap between scaffolds. Default 50000
  type: long?
  inputBinding:
    prefix: -minScaffoldGap
- id: in_single_contigs
  doc: "- when a full sequence has no gaps, maintain contig\nname without adding index\
    \ extension.\n"
  type: boolean?
  inputBinding:
    prefix: -singleContigs
- id: in_input_dot_fa
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
- hgFakeAgp
