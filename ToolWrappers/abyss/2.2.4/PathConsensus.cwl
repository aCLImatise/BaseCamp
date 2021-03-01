class: CommandLineTool
id: PathConsensus.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_dist_error
  doc: "acceptable error of a distance estimate\ndefault: 6 bp"
  type: long?
  inputBinding:
    prefix: --dist-error
- id: in_out
  doc: output contig paths to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_consensus
  doc: output consensus sequences to FILE
  type: File?
  inputBinding:
    prefix: --consensus
- id: in_graph
  doc: output the contig adjacency graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_output_graph_adj
  doc: output the graph in ADJ format [default]
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_as_qg
  doc: output the graph in ASQG format
  type: boolean?
  inputBinding:
    prefix: --asqg
- id: in_dot
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_gfa
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_gfa_one
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa1
- id: in_gfa_two
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa2
- id: in_gv
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --gv
- id: in_sam
  doc: output the graph in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_branches
  doc: "maximum number of sequences to align\ndefault: 4"
  type: long?
  inputBinding:
    prefix: --branches
- id: in_identity
  doc: 'minimum identity, default: 0.9'
  type: double?
  inputBinding:
    prefix: --identity
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_db
  doc: specify path of database repository in FILE
  type: File?
  inputBinding:
    prefix: --db
- id: in_library
  doc: specify library NAME for database
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for database
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for database
  type: string?
  inputBinding:
    prefix: --species
- id: in_di_align_d
  doc: 'dialign debug level, default: 0'
  type: long?
  inputBinding:
    prefix: --dialign-d
- id: in_di_align_m
  doc: 'score matrix, default: dna_matrix.scr'
  type: File?
  inputBinding:
    prefix: --dialign-m
- id: in_di_align_p
  doc: "diagonal length probability distribution\ndefault: dna_diag_prob_100_exp_550000"
  type: File?
  inputBinding:
    prefix: --dialign-p
- id: in_fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_contig_adjacency_graph
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 1
- id: in_path
  doc: paths of these contigs
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output contig paths to FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_consensus
  doc: output consensus sequences to FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_consensus)
- id: out_graph
  doc: output the contig adjacency graph to FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_graph)
hints: []
cwlVersion: v1.1
baseCommand:
- PathConsensus
