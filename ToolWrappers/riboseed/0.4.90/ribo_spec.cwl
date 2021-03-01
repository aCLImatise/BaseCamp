class: CommandLineTool
id: ribo_spec.cwl
inputs:
- id: in_output
  doc: 'output directory; default: None'
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_assembly_graph
  doc: "fastg assembly graph from SPAdes or a SPAdes output\ndirectory. If the latter,\
    \ riboSpec will be run on both\nthe final assembly graph, and all the intermediate\n\
    graphs for each k-mer."
  type: Directory?
  inputBinding:
    prefix: --assembly_graph
- id: in_plot_graphs
  doc: draw the network graphs
  type: boolean?
  inputBinding:
    prefix: --plot_graphs
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File?
  inputBinding:
    prefix: --verbosity
- id: in_min_contig_len
  doc: "Contigs under this length will be collapsed; default:\n75"
  type: long?
  inputBinding:
    prefix: --min_contig_len
- id: in_min_anchor_length
  doc: "Paths must contain at least one node this long as an\nanchor; default: 500"
  type: long?
  inputBinding:
    prefix: --min_anchor_length
- id: in_medium_length_threshold
  doc: "Paths are simplified when contigs are greater than the\n--min_contig_length,\
    \ but still short. These medium-\nlength contigs may be assembly artificts or\
    \ otherwise\nirrelevent. IF you dont want this filtering applied,\nset to the\
    \ same value as --min_contig_len; default:\n400"
  type: long?
  inputBinding:
    prefix: --medium_length_threshold
- id: in_threshold
  doc: "paths must be at least this long (bp) to be\nconsidered; default: 1500"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_barr_nap_length_threshold
  doc: "This gets passed to barrnap's --lencutoff argument,\nfor determining what\
    \ we should treat as a legitimate\nhmm hit; default: 0.75"
  type: long?
  inputBinding:
    prefix: --barrnap_length_threshold
- id: in_barr_nap_exe
  doc: 'Path to barrnap executable; default: barrnap'
  type: File?
  inputBinding:
    prefix: --barrnap_exe
- id: in_cores
  doc: 'cores to be used; default: None'
  type: string?
  inputBinding:
    prefix: --cores
- id: in_make_adjacency_matrix
  doc: 'generate and plot an adjacency matrix; default: False'
  type: boolean?
  inputBinding:
    prefix: --MAKE_ADJACENCY_MATRIX
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory; default: None'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_assembly_graph
  doc: "fastg assembly graph from SPAdes or a SPAdes output\ndirectory. If the latter,\
    \ riboSpec will be run on both\nthe final assembly graph, and all the intermediate\n\
    graphs for each k-mer."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_assembly_graph)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbosity)
hints: []
cwlVersion: v1.1
baseCommand:
- ribo
- spec
