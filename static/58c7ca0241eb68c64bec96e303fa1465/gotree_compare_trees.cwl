class: CommandLineTool
id: gotree_compare_trees.cwl
inputs:
- id: in_binary
  doc: If true, then just print true (identical tree) or false (different tree) for
    each compared tree
  type: boolean?
  inputBinding:
    prefix: --binary
- id: in_rf
  doc: If true, outputs Robinson-Foulds distance, as the sum of reference + compared
    specific branches
  type: boolean?
  inputBinding:
    prefix: --rf
- id: in_tips
  doc: Include tips in the comparison
  type: boolean?
  inputBinding:
    prefix: --tips
- id: in_compared
  doc: Compared trees input file (default "none")
  type: File?
  inputBinding:
    prefix: --compared
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_ref_tree
  doc: Reference tree input file (default "stdin")
  type: File?
  inputBinding:
    prefix: --reftree
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=2) (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- compare
- trees
