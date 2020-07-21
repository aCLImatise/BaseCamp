class: CommandLineTool
id: ../../../ipa2_graph_to_contig.cwl
inputs:
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
- ipa2_graph_to_contig
