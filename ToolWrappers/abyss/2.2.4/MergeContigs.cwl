class: CommandLineTool
id: MergeContigs.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_out
  doc: output the merged contigs to FILE [stdout]
  type: File?
  inputBinding:
    prefix: --out
- id: in_graph
  doc: write the contig overlap graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_merged
  doc: output only merged contigs
  type: boolean?
  inputBinding:
    prefix: --merged
- id: in_adj
  doc: output the graph in adj format
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_dot
  doc: output the graph in dot format [default]
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_dot_mean_cov
  doc: same as above but give the mean coverage
  type: boolean?
  inputBinding:
    prefix: --dot-meancov
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
- id: in_fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_overlap
  doc: contig overlap graph
  type: string
  inputBinding:
    position: 1
- id: in_path
  doc: sequences of contig IDs
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output the merged contigs to FILE [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- MergeContigs
