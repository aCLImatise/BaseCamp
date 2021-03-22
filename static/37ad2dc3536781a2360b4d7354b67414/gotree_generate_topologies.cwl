class: CommandLineTool
id: gotree_generate_topologies.cwl
inputs:
- id: in_input
  doc: 'Input Tree: Tip names of generate trees are taken from it (default "none")'
  type: string?
  inputBinding:
    prefix: --input
- id: in_nb_tips
  doc: Number of tips/leaves of the trees to generate (default 10)
  type: long?
  inputBinding:
    prefix: --nbtips
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_nb_trees
  doc: Number of trees to generate (default 1)
  type: long?
  inputBinding:
    prefix: --nbtrees
- id: in_output
  doc: Number of tips of the tree to generate (default "stdout")
  type: long?
  inputBinding:
    prefix: --output
- id: in_rooted
  doc: Generate rooted trees
  type: boolean?
  inputBinding:
    prefix: --rooted
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
- generate
- topologies
