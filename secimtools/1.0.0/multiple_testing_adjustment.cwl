#!/usr/bin/env cwl-runner

baseCommand:
- multiple_testing_adjustment.py
class: CommandLineTool
cwlVersion: v1.0
id: multiple_testing_adjustment.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Name of the column with uniquedentifiers.
  id: uniqid
  inputBinding:
    prefix: --uniqID
  type: string
- doc: Name of the column with p-value.
  id: pval
  inputBinding:
    prefix: --pval
  type: string
- doc: Alpha value.
  id: alpha
  inputBinding:
    prefix: --alpha
  type: string
- doc: Output path for corrected file[TSV]
  id: out_adjusted
  inputBinding:
    prefix: --outadjusted
  type: string
- doc: Output path for flags file[TSV]
  id: flags
  inputBinding:
    prefix: --flags
  type: string
