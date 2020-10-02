class: CommandLineTool
id: fc_graph_to_contig.cwl
inputs:
- id: in_improper_p_ctg
  doc: "Skip the initial read in each p_ctg path. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --improper-p-ctg
- id: in_proper_a_ctg
  doc: "Skip the initial read in each a_ctg path. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --proper-a-ctg
- id: in_p_reads_fast_a_fn
  doc: "Input. Preads file, required to construct the contigs.\n(default: ./preads4falcon.fasta)"
  type: File
  inputBinding:
    prefix: --preads-fasta-fn
- id: in_sg_edges_list_fn
  doc: "Input. File containing string graph edges, produced by\novlp_to_graph.py.\
    \ (default: ./sg_edges_list)"
  type: File
  inputBinding:
    prefix: --sg-edges-list-fn
- id: in_utg_data_fn
  doc: "Input. File containing unitig data, produced by\novlp_to_graph.py. (default:\
    \ ./utg_data)"
  type: File
  inputBinding:
    prefix: --utg-data-fn
- id: in_ctg_paths_fn
  doc: "Input. File containing contig paths, produced by\novlp_to_graph.py. (default:\
    \ ./ctg_paths)"
  type: File
  inputBinding:
    prefix: --ctg-paths-fn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_graph_to_contig
