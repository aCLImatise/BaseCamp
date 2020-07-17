class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ribo_spec.cwl
inputs:
- id: output
  doc: 'output directory; default: None'
  type: string
  inputBinding:
    prefix: --output
- id: assembly_graph
  doc: fastg assembly graph from SPAdes or a SPAdes output directory. If the latter,
    riboSpec will be run on both the final assembly graph, and all the intermediate
    graphs for each k-mer.
  type: string
  inputBinding:
    prefix: --assembly_graph
- id: plot_graphs
  doc: draw the network graphs
  type: boolean
  inputBinding:
    prefix: --plot_graphs
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: min_contig_len
  doc: 'Contigs under this length will be collapsed; default: 75'
  type: long
  inputBinding:
    prefix: --min_contig_len
- id: min_anchor_length
  doc: 'Paths must contain at least one node this long as an anchor; default: 500'
  type: long
  inputBinding:
    prefix: --min_anchor_length
- id: medium_length_threshold
  doc: 'Paths are simplified when contigs are greater than the --min_contig_length,
    but still short. These medium- length contigs may be assembly artificts or otherwise
    irrelevent. IF you dont want this filtering applied, set to the same value as
    --min_contig_len; default: 400'
  type: string
  inputBinding:
    prefix: --medium_length_threshold
- id: threshold
  doc: 'paths must be at least this long (bp) to be considered; default: 1500'
  type: string
  inputBinding:
    prefix: --threshold
- id: barr_nap_length_threshold
  doc: "This gets passed to barrnap's --lencutoff argument, for determining what we\
    \ should treat as a legitimate hmm hit; default: 0.75"
  type: string
  inputBinding:
    prefix: --barrnap_length_threshold
- id: barr_nap_exe
  doc: 'Path to barrnap executable; default: barrnap'
  type: string
  inputBinding:
    prefix: --barrnap_exe
- id: cores
  doc: 'cores to be used; default: None'
  type: string
  inputBinding:
    prefix: --cores
- id: make_adjacency_matrix
  doc: 'generate and plot an adjacency matrix; default: False'
  type: boolean
  inputBinding:
    prefix: --MAKE_ADJACENCY_MATRIX
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- spec
