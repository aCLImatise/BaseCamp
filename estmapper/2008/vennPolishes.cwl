class: CommandLineTool
id: vennPolishes.cwl
inputs:
- id: n
  doc: there are <num-seqs> in the input set
  type: string
  inputBinding:
    prefix: -n
- id: i
  doc: filter matches to be >= <min-ident> identity default = 95
  type: long
  inputBinding:
    prefix: -i
- id: c
  doc: filter matches to be >= <min-cover> coverage default = 50
  type: long
  inputBinding:
    prefix: -c
- id: d
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
outputs: []
cwlVersion: v1.1
baseCommand:
- vennPolishes
