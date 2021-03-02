class: CommandLineTool
id: humann2_renorm_table.cwl
inputs:
- id: in_input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string?
  inputBinding:
    prefix: --input
- id: in_units
  doc: 'Normalization scheme: copies per million [cpm], relative abundance [relab];
    default=[cpm]'
  type: string?
  inputBinding:
    prefix: --units
- id: in_mode
  doc: Normalize all levels by [community] total or [levelwise] totals; default=[community]
  type: string?
  inputBinding:
    prefix: --mode
- id: in_special
  doc: Include the special features UNMAPPED, UNINTEGRATED, and UNGROUPED; default=[y]
  type: string?
  inputBinding:
    prefix: --special
- id: in_update_s_names
  doc: Update '-RPK' in sample names to appropriate suffix; default=off
  type: boolean?
  inputBinding:
    prefix: --update-snames
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
- humann2_renorm_table
