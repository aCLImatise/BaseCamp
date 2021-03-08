class: CommandLineTool
id: mmseqs_clust.cwl
inputs:
- id: in_cluster_mode
  doc: "0: Set-Cover (greedy)\n1: Connected component (BLASTclust)\n2,3: Greedy clustering\
    \ by sequence length (CDHIT) [0]"
  type: long?
  inputBinding:
    prefix: --cluster-mode
- id: in_max_iterations
  doc: Maximum depth of breadth first search in connected component clustering [1000]
  type: long?
  inputBinding:
    prefix: --max-iterations
- id: in_similarity_type
  doc: 'Type of score used for clustering. 1: alignment score 2: sequence identity
    [2]'
  type: long?
  inputBinding:
    prefix: --similarity-type
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- clust
