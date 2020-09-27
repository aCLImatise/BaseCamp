class: CommandLineTool
id: bedgraph2wig.pl.cwl
inputs:
- id: in_bed_graph_file
  doc: ': The path to the bedgraphffile'
  type: boolean
  inputBinding:
    prefix: --bedgraphfile
- id: in_output_file
  doc: ': The file where the output should be saved. If not supplied, the output is
    printed to STDOUT'
  type: File
  inputBinding:
    prefix: --outputfile
- id: in_span
  doc: ': Use span notation (see http://genome.ucsc.edu/goldenPath/help/wiggle.html'
  type: boolean
  inputBinding:
    prefix: --span
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ': The file where the output should be saved. If not supplied, the output is
    printed to STDOUT'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- bedgraph2wig.pl
