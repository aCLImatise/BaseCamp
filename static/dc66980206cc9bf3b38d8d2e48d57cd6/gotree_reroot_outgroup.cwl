class: CommandLineTool
id: gotree_reroot_outgroup.cwl
inputs:
- id: in_remove_out_group
  doc: Removes the outgroup after reroot
  type: boolean?
  inputBinding:
    prefix: --remove-outgroup
- id: in_strict
  doc: Enforce the outgroup to be monophyletic (else throw an error)
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_tip_file
  doc: File containing names of tips of the outgroup (default "none")
  type: File?
  inputBinding:
    prefix: --tip-file
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_input
  doc: Input Tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Rerooted output tree file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
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
- id: out_output
  doc: Rerooted output tree file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gotree
- reroot
- outgroup
