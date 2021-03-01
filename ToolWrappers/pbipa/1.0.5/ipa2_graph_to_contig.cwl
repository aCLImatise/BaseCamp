class: CommandLineTool
id: ipa2_graph_to_contig.cwl
inputs:
- id: in_sg_edges_list_fn
  doc: "Input. File containing string graph edges, produced by\novlp_to_graph.py.\
    \ (default: ./sg_edges_list)"
  type: File?
  inputBinding:
    prefix: --sg-edges-list-fn
- id: in_utg_data_fn
  doc: "Input. File containing unitig data, produced by\novlp_to_graph.py. (default:\
    \ ./utg_data)"
  type: File?
  inputBinding:
    prefix: --utg-data-fn
- id: in_ctg_paths_fn
  doc: "Input. File containing contig paths, produced by\novlp_to_graph.py. (default:\
    \ ./ctg_paths)"
  type: File?
  inputBinding:
    prefix: --ctg-paths-fn
- id: in_p_ctg_tiling_path
  doc: a_ctg_all_tiling_path
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ipa2_graph_to_contig
