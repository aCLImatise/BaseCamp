class: CommandLineTool
id: mssprottable_fdr.cwl
inputs:
- id: i
  doc: Input file of protein table format
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
- id: qv_ality
  doc: Qvality output file to fetch q-values and PEP from
  type: string
  inputBinding:
    prefix: --qvality
- id: score_col_pattern
  doc: Regular expression pattern to find column where score to use (e.g. percolator
    svm-score) is written.
  type: string
  inputBinding:
    prefix: --scorecolpattern
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- fdr
