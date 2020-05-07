class: CommandLineTool
id: saddle2dot.pl.cwl
inputs:
- id: cut
  doc: '<Int>  Set cutoff to <Int> (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -cut
- id: name
  doc: 'Sets name of graph (default: Unknown)'
  type: string
  inputBinding:
    prefix: -name
outputs: []
cwlVersion: v1.1
baseCommand:
- saddle2dot.pl
