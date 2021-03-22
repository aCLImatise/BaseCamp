class: CommandLineTool
id: gotree_collapse_depth.cwl
inputs:
- id: in_max_depth
  doc: Max Depth cutoff to collapse branches
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_min_depth
  doc: Min depth cutoff to collapse branches
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_root
  doc: Applies also to branches connected to the root (may unroot the tree)
  type: boolean?
  inputBinding:
    prefix: --root
- id: in_tips
  doc: Applies also to tips (keeps a 0.0 length tip)
  type: boolean?
  inputBinding:
    prefix: --tips
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Collapsed tree output file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
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
- id: out_output
  doc: Collapsed tree output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- collapse
- depth
