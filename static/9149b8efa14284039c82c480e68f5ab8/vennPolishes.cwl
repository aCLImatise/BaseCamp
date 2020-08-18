class: CommandLineTool
id: ../../../vennPolishes.cwl
inputs:
- id: there_numseqs_input
  doc: there are <num-seqs> in the input set
  type: string
  inputBinding:
    prefix: -n
- id: filter_matches_minident
  doc: filter matches to be >= <min-ident> identity default = 95
  type: long
  inputBinding:
    prefix: -i
- id: filter_matches_mincover
  doc: filter matches to be >= <min-cover> coverage default = 50
  type: long
  inputBinding:
    prefix: -c
- id: dump_sequence_iids
  doc: dump the sequence IIDs in <class-id> to stdout
  type: string
  inputBinding:
    prefix: -d
- id: plot
  doc: write a plot-able datafile of the venn diagram for percent identity <min-idenit>
    to 100 (inclusive) and <min-cover> coverage.
  type: boolean
  inputBinding:
    prefix: -plot
- id: given
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sets
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: sim_four
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: polishes
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- vennPolishes
