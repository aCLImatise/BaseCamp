#!/usr/bin/env cwl-runner

baseCommand:
- hmmlogo
class: CommandLineTool
cwlVersion: v1.0
id: hmmlogo
inputs:
- doc: ''
  id: hmm_file
  inputBinding:
    position: 0
  type: string
- doc: ': total height = relative entropy ; all letters shown (default)'
  id: height_relent_all
  inputBinding:
    prefix: --height_relent_all
  type: boolean
- doc: ': total height = relative entropy ; only letters >bg shown'
  id: height_relent_above_bg
  inputBinding:
    prefix: --height_relent_abovebg
  type: boolean
- doc: ': total height = sums of (pos|neg) scores; residue height = score'
  id: height_score
  inputBinding:
    prefix: --height_score
  type: boolean
- doc: ": don't provide indel rate values"
  id: no_in_del
  inputBinding:
    prefix: --no_indel
  type: boolean
