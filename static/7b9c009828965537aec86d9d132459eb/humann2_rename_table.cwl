class: CommandLineTool
id: humann2_rename_table.cwl
inputs:
- id: in_input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string?
  inputBinding:
    prefix: --input
- id: in_names
  doc: Table features that can be renamed with included data files
  type: string?
  inputBinding:
    prefix: --names
- id: in_custom
  doc: Custom mapping of feature IDs to full names (.tsv or .tsv.gz)
  type: string?
  inputBinding:
    prefix: --custom
- id: in_simplify
  doc: Remove non-alphanumeric characters from names
  type: boolean?
  inputBinding:
    prefix: --simplify
- id: in_output
  doc: "Path for modified output table; default=[STDOUT]\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path for modified output table; default=[STDOUT]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_rename_table
