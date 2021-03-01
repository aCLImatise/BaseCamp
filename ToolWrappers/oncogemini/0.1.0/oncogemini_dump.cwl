class: CommandLineTool
id: oncogemini_dump.cwl
inputs:
- id: in_variants
  doc: Report all rows/columns from the variants table.
  type: boolean?
  inputBinding:
    prefix: --variants
- id: in_genotypes
  doc: "Report all rows/columns from the variants table with one line\nper sample/genotype."
  type: boolean?
  inputBinding:
    prefix: --genotypes
- id: in_samples
  doc: Report all rows/columns from the samples table.
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_header
  doc: Add a header of column names to the output.
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_sep
  doc: Output column separator
  type: string?
  inputBinding:
    prefix: --sep
- id: in_tf_am
  doc: Output sample information to TFAM format.
  type: boolean?
  inputBinding:
    prefix: --tfam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- oncogemini
- dump
