#!/usr/bin/env cwl-runner

baseCommand:
- o-metaMDS-analysis-with-metadata.R
class: CommandLineTool
cwlVersion: v1.0
id: o-metamds-analysis-with-metadata.r
inputs:
- doc: ''
  id: script_r
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_matrix
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: metadata
  inputBinding:
    position: 2
  type: string
- doc: Output file prefix [default "unknown"]
  id: output_file_prefix
  inputBinding:
    prefix: --output_file_prefix
  type: string
- doc: Distance metric [default "horn"]
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: Column in the metadata for sample mapping
  id: mapping_variable
  inputBinding:
    prefix: --mapping_variable
  type: string
- doc: Title for the output figure [default '(unknown title)']
  id: title
  inputBinding:
    prefix: --title
  type: string
