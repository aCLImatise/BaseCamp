class: CommandLineTool
id: condense_workflow.py.cwl
inputs:
- id: in_assigned_taxonomy_fn
  doc: "The taxonomy file output by the assign_taxonomy\nscript."
  type: File?
  inputBinding:
    prefix: --assigned_taxonomy_fn
- id: in_rep_set_fn
  doc: The set of representative sequences.
  type: string?
  inputBinding:
    prefix: --rep_set_fn
- id: in_seqs_otus_fn
  doc: The list of OTU IDs and their associated sequence IDs.
  type: string?
  inputBinding:
    prefix: --seqs_otus_fn
- id: in_phylogenetic_level
  doc: "Set the phylogenetic level at which to define OTUs for\ncondensing and downstream\
    \ processing. Defaults to\nspecies level."
  type: string?
  inputBinding:
    prefix: --phylogenetic_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_assigned_taxonomy_fn
  doc: "The taxonomy file output by the assign_taxonomy\nscript."
  type: File?
  outputBinding:
    glob: $(inputs.in_assigned_taxonomy_fn)
hints: []
cwlVersion: v1.1
baseCommand:
- condense_workflow.py
