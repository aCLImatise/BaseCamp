class: CommandLineTool
id: bp_sreformat.pl.cwl
inputs:
- id: no_interleaved
  doc: -- for phylip,non-interleaved format
  type: string
  inputBinding:
    position: 0
- id: id_line_break
  doc: -- for phylip, makes it molphy format
  type: string
  inputBinding:
    position: 1
- id: percentages
  doc: -- for clustalw, show % id per line
  type: string
  inputBinding:
    position: 2
- id: flat
  doc: -- don't show start-end in seqid
  type: string
  inputBinding:
    position: 3
- id: line_length
  doc: -- line length for clustalw
  type: string
  inputBinding:
    position: 4
- id: mr_bayes
  doc: -- for MrBayes proper NEXUS output
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_sreformat.pl
