class: CommandLineTool
id: tigmint_arcs_tsv_graph_file.cwl
inputs:
- id: graph_file
  doc: ARCS graph file output (.gv)
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: Output file name. Must be named XXX.tigpair_checkpoint.tsv, where XXX is same
    as base name (-b) given to LINKS.
  type: string
  inputBinding:
    position: 1
- id: fast_a_file
  doc: FASTA file of sequences to scaffold
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tigmint-arcs-tsv
- graph_file
