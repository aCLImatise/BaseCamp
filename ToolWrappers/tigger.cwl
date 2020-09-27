class: CommandLineTool
id: tigger.cwl
inputs:
- id: in_write_contig_graphs
  doc: Write contig graphs as dot files (fullgraph.dot and Contig-*.dot)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_verbose_level
  doc: Verbose level
  type: string
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tigger
