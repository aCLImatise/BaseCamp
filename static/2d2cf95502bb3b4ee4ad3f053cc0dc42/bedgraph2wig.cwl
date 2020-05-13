class: CommandLineTool
id: bedgraph2wig.pl.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stdout
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: bed_graph_file
  doc: ': The path to the bedgraphffile'
  type: boolean
  inputBinding:
    prefix: --bedgraphfile
- id: output_file
  doc: ': The file where the output should be saved. If not supplied, the output is
    printed to STDOUT'
  type: boolean
  inputBinding:
    prefix: --outputfile
- id: span
  doc: ': Use span notation (see http://genome.ucsc.edu/goldenPath/help/wiggle.html'
  type: boolean
  inputBinding:
    prefix: --span
outputs: []
cwlVersion: v1.1
baseCommand:
- bedgraph2wig.pl
