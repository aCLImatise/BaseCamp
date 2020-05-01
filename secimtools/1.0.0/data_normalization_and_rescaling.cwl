#!/usr/bin/env cwl-runner

baseCommand:
- data_normalization_and_rescaling.py
class: CommandLineTool
cwlVersion: v1.0
id: data_normalization_and_rescaling.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Design file.
  id: design
  inputBinding:
    prefix: --design
  type: string
- doc: Name of the column with unique.identifiers.
  id: uniqid
  inputBinding:
    prefix: --uniqID
  type: string
- doc: Name of the normalization method that user wants to apply.
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: Path for TSV output of the normalized/re-scalled data.
  id: out
  inputBinding:
    prefix: --out
  type: string
