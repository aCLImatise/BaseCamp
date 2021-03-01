class: CommandLineTool
id: gotree_brlen_setrand.cwl
inputs:
- id: in_max_mean
  doc: Mean of the exponential distribution of branch lengths will be drawn uniformly
    in the interval [min-mean,max-mean] (default 0.05)
  type: double?
  inputBinding:
    prefix: --max-mean
- id: in_mean
  doc: Mean of the exponential distribution of branch lengths (default 0.1)
  type: double?
  inputBinding:
    prefix: --mean
- id: in_min_mean
  doc: Mean of the exponential distribution of branch lengths will be drawn uniformly
    in the interval [min-mean,max-mean] (default 0.001)
  type: double?
  inputBinding:
    prefix: --min-mean
- id: in_output
  doc: Random length output tree file (default "stdout")
  type: long?
  inputBinding:
    prefix: --output
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
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gotree
- brlen
- setrand
