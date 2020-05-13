class: CommandLineTool
id: multiple_testing_adjustment.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: uniqid
  doc: Name of the column with uniquedentifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: pval
  doc: Name of the column with p-value.
  type: string
  inputBinding:
    prefix: --pval
- id: alpha
  doc: Alpha value.
  type: string
  inputBinding:
    prefix: --alpha
- id: out_adjusted
  doc: Output path for corrected file[TSV]
  type: string
  inputBinding:
    prefix: --outadjusted
- id: flags
  doc: Output path for flags file[TSV]
  type: string
  inputBinding:
    prefix: --flags
outputs: []
cwlVersion: v1.1
baseCommand:
- multiple_testing_adjustment.py
