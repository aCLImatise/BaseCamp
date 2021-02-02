class: CommandLineTool
id: gotree_sample.cwl
inputs:
- id: in_input
  doc: Input reference trees (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: in_nb_trees
  doc: Number of trees to sample from input file (default 1)
  type: long
  inputBinding:
    prefix: --nbtrees
- id: in_output
  doc: Output trees (default "stdout")
  type: string
  inputBinding:
    prefix: --output
- id: in_replace
  doc: If given, samples with replacement
  type: boolean
  inputBinding:
    prefix: --replace
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gotree
- sample
