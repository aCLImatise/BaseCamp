#!/usr/bin/env cwl-runner

baseCommand:
- o-boxplots.R
class: CommandLineTool
cwlVersion: v1.0
id: o-boxplots.r
inputs:
- doc: ''
  id: this_script_r
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_matrix
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: sample_mapping
  inputBinding:
    position: 2
  type: string
- doc: Mapping variable to use from the sample mapping file. If none specified, the
    first column is used.
  id: mapping_var
  inputBinding:
    prefix: --mapping_var
  type: string
- doc: Output directory to store images [default "."]
  id: output_directory
  inputBinding:
    prefix: --output_directory
  type: string
- doc: Remove upper outliers for better scaling [default "FALSE"]
  id: remove_outliers
  inputBinding:
    prefix: --remove_outliers
  type: string
- doc: PDF output height [default "9"]
  id: pdf_height
  inputBinding:
    prefix: --pdf_height
  type: string
