class: CommandLineTool
id: humann2_rename_table.cwl
inputs:
- id: input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string
  inputBinding:
    prefix: --input
- id: names
  doc: Table features that can be renamed with included data files
  type: string
  inputBinding:
    prefix: --names
- id: custom
  doc: Custom mapping of feature IDs to full names (.tsv or .tsv.gz)
  type: string
  inputBinding:
    prefix: --custom
- id: simplify
  doc: Remove non-alphanumeric characters from names
  type: boolean
  inputBinding:
    prefix: --simplify
- id: output
  doc: Path for modified output table; default=[STDOUT]
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_rename_table
