#!/usr/bin/env cwl-runner

baseCommand:
- filter_fusion_sequences.py
class: CommandLineTool
cwlVersion: v1.0
id: filter_fusion_sequences.py
inputs:
- doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input file containing the banned fusion sequences.
  id: banned
  inputBinding:
    prefix: --banned
  type: string
- doc: The output file where the frame predictions are written.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output file where the removed fusions are written.
  id: removed
  inputBinding:
    prefix: --removed
  type: string
- doc: The length of the window. Default is 30.
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: Do not print status messages to stdout.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
