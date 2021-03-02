class: CommandLineTool
id: gotree_prune.cwl
inputs:
- id: in_comp
  doc: Input compared tree  (default "none")
  type: string?
  inputBinding:
    prefix: --comp
- id: in_output
  doc: Output tree (default "stdout")
  type: string?
  inputBinding:
    prefix: --output
- id: in_random
  doc: Number of tips to randomly sample
  type: long?
  inputBinding:
    prefix: --random
- id: in_ref
  doc: Input reference tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --ref
- id: in_revert
  doc: 'If true, then revert the behavior: will keep only species given in the command
    line, or keep only the species that are specific to the input tree, or keep only
    randomly selected taxa'
  type: boolean?
  inputBinding:
    prefix: --revert
- id: in_tip_file
  doc: Tip file (default "none")
  type: File?
  inputBinding:
    prefix: --tipfile
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
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
- prune
