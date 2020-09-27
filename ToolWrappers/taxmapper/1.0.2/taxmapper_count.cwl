class: CommandLineTool
id: taxmapper_count.cwl
inputs:
- id: in_tax
  doc: Filtered taxonomy mapping file.
  type: File
  inputBinding:
    prefix: --tax
- id: in_out_one
  doc: "Output file 1, counted taxa for first taxonomic\nhierarchy [default: taxa_counts_level1.tsv]"
  type: File
  inputBinding:
    prefix: --out1
- id: in_out_two
  doc: "Output file 2, counted taxa for second taxonomic\nhierarchy [default: taxa_counts_level2.tsv]\n"
  type: File
  inputBinding:
    prefix: --out2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_one
  doc: "Output file 1, counted taxa for first taxonomic\nhierarchy [default: taxa_counts_level1.tsv]"
  type: File
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: "Output file 2, counted taxa for second taxonomic\nhierarchy [default: taxa_counts_level2.tsv]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_out_two)
cwlVersion: v1.1
baseCommand:
- taxmapper
- count
