class: CommandLineTool
id: imputation.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Name of the column with groups.
  type: string?
  inputBinding:
    prefix: --group
- id: in_output
  doc: Path of output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_strategy
  doc: "Imputation strategy: KNN, mean, median, or most\nfrequent"
  type: string?
  inputBinding:
    prefix: --strategy
- id: in_no_zero
  doc: Treat 0 as missing?
  type: boolean?
  inputBinding:
    prefix: --no_zero
- id: in_no_negative
  doc: Treat negative as missing?
  type: boolean?
  inputBinding:
    prefix: --no_negative
- id: in_exclude
  doc: "Additional values to treat as missingdata, seperated\nby commas"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_row_cut_off
  doc: "Percent cutoff for imputation of rows.If this is\nexceeded, imputation willbe\
    \ done by mean instead of\nknn. Default: .5"
  type: double?
  inputBinding:
    prefix: --row_cutoff
- id: in_distribution
  doc: "use mean or median to generate mu value for bayesian\nimputation"
  type: string?
  inputBinding:
    prefix: --distribution
- id: in_knn
  doc: 'Number of nearest neighbors to search Default: 5.'
  type: long?
  inputBinding:
    prefix: --knn
- id: in_col_cut_off
  doc: "Percent cutoff forimputation of columns. If this is\nexceeded, imputationwill\
    \ be done by mean instead of\nknn. Default: .8\n"
  type: double?
  inputBinding:
    prefix: --col_cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- imputation.py
