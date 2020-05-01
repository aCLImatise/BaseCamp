#!/usr/bin/env cwl-runner

baseCommand:
- scpred_get_std_output.R
class: CommandLineTool
cwlVersion: v1.0
id: scpred_get_std_output.r
inputs:
- doc: Path to the predictions file in text format
  id: predictions_file
  inputBinding:
    prefix: --predictions-file
  type: string
- doc: Cell id column name. If not provided, it is assumed cell ids are represented
    by index
  id: cell_id_col
  inputBinding:
    prefix: --cell-id-col
  type: string
- doc: 'Should score column be added? Default: FALSE'
  id: get_scores
  inputBinding:
    prefix: --get-scores
  type: boolean
- doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  id: classifier
  inputBinding:
    prefix: --classifier
  type: string
- doc: Path to the final output file in text format
  id: output_table
  inputBinding:
    prefix: --output-table
  type: string
