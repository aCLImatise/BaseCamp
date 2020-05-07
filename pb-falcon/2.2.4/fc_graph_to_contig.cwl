class: CommandLineTool
id: fc_graph_to_contig.cwl
inputs:
- id: improper_p_ctg
  doc: 'Skip the initial read in each p_ctg path. (default: False)'
  type: boolean
  inputBinding:
    prefix: --improper-p-ctg
- id: proper_a_ctg
  doc: 'Skip the initial read in each a_ctg path. (default: False)'
  type: boolean
  inputBinding:
    prefix: --proper-a-ctg
- id: p_reads_fast_a_fn
  doc: 'Input. Preads file, required to construct the contigs. (default: ./preads4falcon.fasta)'
  type: string
  inputBinding:
    prefix: --preads-fasta-fn
- id: sg_edges_list_fn
  doc: 'Input. File containing string graph edges, produced by ovlp_to_graph.py. (default:
    ./sg_edges_list)'
  type: string
  inputBinding:
    prefix: --sg-edges-list-fn
- id: utg_data_fn
  doc: 'Input. File containing unitig data, produced by ovlp_to_graph.py. (default:
    ./utg_data)'
  type: string
  inputBinding:
    prefix: --utg-data-fn
- id: ctg_paths_fn
  doc: 'Input. File containing contig paths, produced by ovlp_to_graph.py. (default:
    ./ctg_paths)'
  type: string
  inputBinding:
    prefix: --ctg-paths-fn
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_graph_to_contig
