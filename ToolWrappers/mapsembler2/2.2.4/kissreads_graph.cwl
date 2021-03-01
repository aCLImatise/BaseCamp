class: CommandLineTool
id: kissreads_graph.cwl
inputs:
- id: in_this_message_exit
  doc: this message and exit
  type: string?
  inputBinding:
    prefix: -h
- id: in_t
  doc: "\"c\" \"coverage\"\n\"m\" \"modify\""
  type: string?
  inputBinding:
    prefix: -t
- id: in_input_considered_obtained
  doc: ": the input is considered as a Mapsembler output\n-o file_name: write obtained\
    \ graph. Default: standard output\n-k size_seed: will use seeds of length size_seed.\
    \ Default: 25.\n-c min_coverage: Will consider an edge as coherent if coverage\
    \ (number of reads from all sets using this edge) is at least min_coverage. Default:\
    \ 2\n-d max_substitutions: Will map a read on the graph with at most max_substitutions\
    \ substitutions. Default: 1\n"
  type: boolean?
  inputBinding:
    prefix: -M
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kissreads_graph
