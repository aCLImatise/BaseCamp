class: CommandLineTool
id: mssprottable_bestpeptide.cwl
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
- id: pep_table
  doc: Peptide table file
  type: string
  inputBinding:
    prefix: --peptable
- id: prot_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard Master protein column
  type: string
  inputBinding:
    prefix: --protcol
- id: score_col_pattern
  doc: Regular expression pattern to find column where score to use (e.g. percolator
    svm-score) is written.
  type: string
  inputBinding:
    prefix: --scorecolpattern
- id: prot_col_pattern
  doc: Text pattern to identify column in table in which protein or gene accessions
    are. Use in case of not using standard {} column
  type: string
  inputBinding:
    prefix: --protcolpattern
- id: log_score
  doc: Score, e.g. q-values will be converted to -log10 values.
  type: boolean
  inputBinding:
    prefix: --logscore
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- bestpeptide
