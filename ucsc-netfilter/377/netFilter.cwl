#!/usr/bin/env cwl-runner

baseCommand:
- netFilter
class: CommandLineTool
cwlVersion: v1.0
id: netfilter
inputs:
- doc: block size (def=20,000). -
  id: min_syn_size
  inputBinding:
    prefix: -minSynSize
  type: string
- doc: alignment size(def=10,000). -
  id: min_syn_ali
  inputBinding:
    prefix: -minSynAli
  type: string
- doc: '- Max distance to allow synteny (def=200,000). '
  id: max_far
  inputBinding:
    prefix: -maxFar
  type: string
- doc: '- do inverse filtering based on synteny (tuned for human/mouse).  '
  id: non_syn
  inputBinding:
    prefix: -nonsyn
  type: boolean
- doc: '- do filtering based on synteny (tuned for human/chimp).  '
  id: chimps_yn
  inputBinding:
    prefix: -chimpSyn
  type: boolean
- doc: fills, not gaps. Only useful with -line.
  id: only
  inputBinding:
    prefix: '- Only'
  type: string
- doc: gaps, not fills. Only useful with -line.
  id: only
  inputBinding:
    prefix: '- Only'
  type: string
- doc: a line at a time, not recursing
  id: line
  inputBinding:
    prefix: -line
  type: string
- doc: "- suppress chains involving 'random' chromosomes"
  id: no_random
  inputBinding:
    prefix: -noRandom
  type: boolean
- doc: "- suppress chains involving chromosome names inc '_hap|_alt'"
  id: no_hap
  inputBinding:
    prefix: -noHap
  type: boolean
