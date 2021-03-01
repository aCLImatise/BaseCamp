class: CommandLineTool
id: otu_condense.py.cwl
inputs:
- id: in_input_assigned_taxonomy
  doc: "The taxonomy file output by the assign_taxonomy\nscript."
  type: File?
  inputBinding:
    prefix: --input_assigned_taxonomy
- id: in_pruned_output_file
  doc: "The output file for the pruned taxonomy list. Defaults\nto condensed_assigned_taxonomy.txt"
  type: File?
  inputBinding:
    prefix: --pruned_output_file
- id: in_non_unique_output_file
  doc: "The file will contain a list of pruned OTU IDs\nassociated with the OTU IDs\
    \ they replaced. Defaults to\nnonunique_otu_matrix.txt"
  type: File?
  inputBinding:
    prefix: --non_unique_output_file
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
- id: out_input_assigned_taxonomy
  doc: "The taxonomy file output by the assign_taxonomy\nscript."
  type: File?
  outputBinding:
    glob: $(inputs.in_input_assigned_taxonomy)
- id: out_pruned_output_file
  doc: "The output file for the pruned taxonomy list. Defaults\nto condensed_assigned_taxonomy.txt"
  type: File?
  outputBinding:
    glob: $(inputs.in_pruned_output_file)
- id: out_non_unique_output_file
  doc: "The file will contain a list of pruned OTU IDs\nassociated with the OTU IDs\
    \ they replaced. Defaults to\nnonunique_otu_matrix.txt"
  type: File?
  outputBinding:
    glob: $(inputs.in_non_unique_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- otu_condense.py
