#!/usr/bin/env cwl-runner

baseCommand:
- vennPolishes
class: CommandLineTool
cwlVersion: v1.0
id: vennpolishes
inputs:
- doc: there are <num-seqs> in the input set
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: filter matches to be >= <min-ident> identity default = 95
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: filter matches to be >= <min-cover> coverage default = 50
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: dump the sequence IIDs in <class-id> to stdout
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: write a plot-able datafile of the venn diagram for percent identity <min-idenit>
    to 100 (inclusive) and <min-cover> coverage.
  id: plot
  inputBinding:
    prefix: -plot
  type: boolean
