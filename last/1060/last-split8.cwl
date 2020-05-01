#!/usr/bin/env cwl-runner

baseCommand:
- last-split8
class: CommandLineTool
cwlVersion: v1.0
id: last-split8
inputs:
- doc: ''
  id: last_alignments_maf
  inputBinding:
    position: 0
  type: string
- doc: 'output format: MAF, MAF+ (default=MAF+)'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: lastdb genome name
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: 'RNA direction: 0=reverse, 1=forward, 2=mixed (default=1)'
  id: direction
  inputBinding:
    prefix: --direction
  type: string
- doc: cis-splice probability per base (default=0.004)
  id: cis
  inputBinding:
    prefix: --cis
  type: string
- doc: trans-splice probability per base (default=1e-05)
  id: trans
  inputBinding:
    prefix: --trans
  type: string
- doc: mean of ln[intron length] (default=7)
  id: mean
  inputBinding:
    prefix: --mean
  type: string
- doc: standard deviation of ln[intron length] (default=1.7)
  id: sdev
  inputBinding:
    prefix: --sdev
  type: string
- doc: maximum mismap probability (default=1)
  id: mis_map
  inputBinding:
    prefix: --mismap
  type: string
- doc: minimum alignment score (default=e OR e+t*ln[100])
  id: score
  inputBinding:
    prefix: --score
  type: long
- doc: write original, not split, alignments
  id: no_split
  inputBinding:
    prefix: --no-split
  type: boolean
- doc: maximum memory (default=8T for split, 8G for spliced)
  id: bytes
  inputBinding:
    prefix: --bytes
  type: string
- doc: be verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
