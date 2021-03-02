class: CommandLineTool
id: vennPolishes.cwl
inputs:
- id: in_there_numseqs_input
  doc: there are <num-seqs> in the input set
  type: long?
  inputBinding:
    prefix: -n
- id: in_filter_matches_be_identitydefault
  doc: "filter matches to be >= <min-ident> identity\ndefault = 95"
  type: long?
  inputBinding:
    prefix: -i
- id: in_filter_matches_be_mincover
  doc: "filter matches to be >= <min-cover> coverage\ndefault = 50"
  type: long?
  inputBinding:
    prefix: -c
- id: in_dump_sequence_iids
  doc: dump the sequence IIDs in <class-id> to stdout
  type: string?
  inputBinding:
    prefix: -d
- id: in_plot
  doc: "write a plot-able datafile of the venn diagram\nfor percent identity <min-idenit>\
    \ to 100 (inclusive)\nand <min-cover> coverage.\n"
  type: boolean?
  inputBinding:
    prefix: -plot
- id: in_given
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sets
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sim_four
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_polishes
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vennPolishes
