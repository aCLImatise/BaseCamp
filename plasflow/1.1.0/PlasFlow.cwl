#!/usr/bin/env cwl-runner

baseCommand:
- PlasFlow.py
class: CommandLineTool
cwlVersion: v1.0
id: plasflow.py
inputs:
- doc: Input fasta file with sequences to classify (required)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Output file with classification results (required)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Threshold for probability filtering (default=0.7)
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: Custom labels file
  id: labels
  inputBinding:
    prefix: --labels
  type: string
- doc: Custom models localization
  id: models
  inputBinding:
    prefix: --models
  type: string
