class: CommandLineTool
id: oncogemini_region.cwl
inputs:
- id: in_reg
  doc: Specify a chromosomal region chr:start-end
  type: string
  inputBinding:
    prefix: --reg
- id: in_gene
  doc: Specify a gene of interest
  type: string
  inputBinding:
    prefix: --gene
- id: in_header
  doc: Add a header of column names to the output.
  type: boolean
  inputBinding:
    prefix: --header
- id: in_columns
  doc: A list of columns that you would like returned. Def. = "*"
  type: string
  inputBinding:
    prefix: --columns
- id: in_filter
  doc: Restrictions to apply to variants (SQL syntax)
  type: string
  inputBinding:
    prefix: --filter
- id: in_show_samples
  doc: Add a column of all sample names with a variant to each
  type: boolean
  inputBinding:
    prefix: --show-samples
- id: in_variant_dot
  doc: --format FORMAT   Format of output (JSON, TPED or default)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- region
