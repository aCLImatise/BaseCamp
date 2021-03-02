class: CommandLineTool
id: vcf_to_deletionlist.cwl
inputs:
- id: in_maximal_length_considered
  doc: Maximal length to be considered.
  type: long?
  inputBinding:
    prefix: -m
- id: in_include_deletions_marked
  doc: Include deletions marked as IMPRECISE.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_print_list_genotypes
  doc: "Print list of genotypes as comma-separated list in last\ncolumn.\n"
  type: boolean?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf-to-deletionlist
