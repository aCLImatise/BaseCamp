#!/usr/bin/env cwl-runner

baseCommand:
- imfusion-merge
class: CommandLineTool
cwlVersion: v1.0
id: imfusion-merge
inputs:
- doc: Path to sample directories.
  id: sample_dirs
  inputBinding:
    prefix: --sample_dirs
  type:
    items: string
    type: array
- doc: Output path for merged insertion file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Alternative sample names to use for samples in merged dataset.
  id: names
  inputBinding:
    prefix: --names
  type:
    items: string
    type: array
- doc: Output path for merged expression file.
  id: output_expression
  inputBinding:
    prefix: --output_expression
  type: string
