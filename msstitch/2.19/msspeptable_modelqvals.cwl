class: CommandLineTool
id: msspeptable_modelqvals.cwl
inputs:
- id: i
  doc: Input file of format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: score_col_pattern
  doc: Regular expression pattern to find column where score to use (e.g. percolator
    svm-score) is written.
  type: string
  inputBinding:
    prefix: --scorecolpattern
- id: fdr_col_pattern
  doc: Unique text pattern to identify FDR column in input table.
  type: string
  inputBinding:
    prefix: --fdrcolpattern
- id: q_val_threshold
  doc: Specifies the inclusion threshold for q-values to fit a linear model to. Any
    scores/q-values below this threshold will not be used.
  type: string
  inputBinding:
    prefix: --qvalthreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- msspeptable
- modelqvals
