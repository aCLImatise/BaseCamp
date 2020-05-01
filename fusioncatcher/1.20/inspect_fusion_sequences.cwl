#!/usr/bin/env cwl-runner

baseCommand:
- inspect_fusion_sequences.py
class: CommandLineTool
cwlVersion: v1.0
id: inspect_fusion_sequences.py
inputs:
- doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output file where the frame predictions are written.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The length of region where the two consecutive windows are overlapping. Default
    is 12.
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: The length of the sliding window. Default is 24.
  id: length
  inputBinding:
    prefix: --length
  type: string
- doc: The length of the kmer used in computing the codelength. Default is 2.
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: The minimum length of the polyN. Default is 15.
  id: poly
  inputBinding:
    prefix: --poly
  type: string
- doc: Any window which compresses less this threshold is considered to contain a
    short tandem repeat and the read will be filtered out. Default is 1.4.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: Any window which compresses less this threshold is considered to contain a
    short tandem repeat and the read will be filtered out. Default is 4.5.
  id: threshold_2
  inputBinding:
    prefix: --threshold2
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
