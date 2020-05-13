class: CommandLineTool
id: humann2_renorm_table.cwl
inputs:
- id: input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string
  inputBinding:
    prefix: --input
- id: units
  doc: 'Normalization scheme: copies per million [cpm], relative abundance [relab];
    default=[cpm]'
  type: string
  inputBinding:
    prefix: --units
- id: mode
  doc: Normalize all levels by [community] total or [levelwise] totals; default=[community]
  type: string
  inputBinding:
    prefix: --mode
- id: special
  doc: Include the special features UNMAPPED, UNINTEGRATED, and UNGROUPED; default=[y]
  type: string
  inputBinding:
    prefix: --special
- id: update_s_names
  doc: Update '-RPK' in sample names to appropriate suffix; default=off
  type: boolean
  inputBinding:
    prefix: --update-snames
- id: output
  doc: Path for modified output table; default=[STDOUT]
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_renorm_table
