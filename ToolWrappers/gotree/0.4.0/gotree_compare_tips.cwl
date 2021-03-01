class: CommandLineTool
id: gotree_compare_tips.cwl
inputs:
- id: in_priority_over_f
  doc: priority over -f
  type: string?
  inputBinding:
    prefix: -c
- id: in_tip_file
  doc: Tip File (Optional) (default "none")
  type: File?
  inputBinding:
    prefix: --tipfile
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
- compare
- tips
