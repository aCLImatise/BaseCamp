class: CommandLineTool
id: prune_otus.py.cwl
inputs:
- id: in_seqs_otus_fn
  doc: The output from the pick OTUs step, e.g. seqs_otus.txt
  type: string?
  inputBinding:
    prefix: --seqs_otus_fn
- id: in_id_to_taxonomy_fn
  doc: "Path to tab-delimited file mapping sequences to\nassigned taxonomy."
  type: File?
  inputBinding:
    prefix: --id_to_taxonomy_fn
- id: in_percent_of_samples
  doc: "OTUs that occur in less than this percent of samples\nwill be removed. Default\
    \ is 5 percent."
  type: long?
  inputBinding:
    prefix: --percent_of_samples
- id: in_percent_of_sequences
  doc: "OTUs that occur in less than this percent of total\nsequences will be removed.\
    \ Default is 0.01 percent."
  type: double?
  inputBinding:
    prefix: --percent_of_sequences
- id: in_phylogenetic_level
  doc: "Set the phylogenetic level at which to join OTUs for\nconsideration in pruning.\
    \ Default is 'g'(group)."
  type: string?
  inputBinding:
    prefix: --phylogenetic_level
- id: in_output_pruned_otus_fn
  doc: "The main output file that will contain the remaining\nOTUs and sequence IDs."
  type: File?
  inputBinding:
    prefix: --output_pruned_otus_fn
- id: in_output_removed_otus_fn
  doc: "The file to write out the set of OTUs that were\nremoved by the filter."
  type: File?
  inputBinding:
    prefix: --output_removed_otus_fn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pruned_otus_fn
  doc: "The main output file that will contain the remaining\nOTUs and sequence IDs."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pruned_otus_fn)
- id: out_output_removed_otus_fn
  doc: "The file to write out the set of OTUs that were\nremoved by the filter."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_removed_otus_fn)
hints: []
cwlVersion: v1.1
baseCommand:
- prune_otus.py
