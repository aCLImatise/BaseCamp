class: CommandLineTool
id: netFilter.cwl
inputs:
- id: min_syn_size
  doc: block size (def=20,000). -
  type: string
  inputBinding:
    prefix: -minSynSize
- id: min_syn_ali
  doc: alignment size(def=10,000). -
  type: string
  inputBinding:
    prefix: -minSynAli
- id: max_far
  doc: '- Max distance to allow synteny (def=200,000). '
  type: string
  inputBinding:
    prefix: -maxFar
- id: non_syn
  doc: '- do inverse filtering based on synteny (tuned for human/mouse).  '
  type: boolean
  inputBinding:
    prefix: -nonsyn
- id: chimps_yn
  doc: '- do filtering based on synteny (tuned for human/chimp).  '
  type: boolean
  inputBinding:
    prefix: -chimpSyn
- id: only
  doc: fills, not gaps. Only useful with -line.
  type: string
  inputBinding:
    prefix: '- Only'
- id: only
  doc: gaps, not fills. Only useful with -line.
  type: string
  inputBinding:
    prefix: '- Only'
- id: line
  doc: a line at a time, not recursing
  type: string
  inputBinding:
    prefix: -line
- id: no_random
  doc: "- suppress chains involving 'random' chromosomes"
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: no_hap
  doc: "- suppress chains involving chromosome names inc '_hap|_alt'"
  type: boolean
  inputBinding:
    prefix: -noHap
outputs: []
cwlVersion: v1.1
baseCommand:
- netFilter
