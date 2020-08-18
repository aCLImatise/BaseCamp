class: CommandLineTool
id: ../../../netFilter.cwl
inputs:
- id: chr_restrict_query_sequence_named
  doc: ',chr2 - restrict query side sequence to those named'
  type: string
  inputBinding:
    prefix: -q
- id: not_q
  doc: ',chr2 - restrict query side sequence to those not named'
  type: string
  inputBinding:
    prefix: -notQ
- id: chr_restrict_side_sequence_named
  doc: ',chr2 - restrict target side sequence to those named'
  type: string
  inputBinding:
    prefix: -t
- id: not_t
  doc: ',chr2 - restrict target side sequence to those not named'
  type: string
  inputBinding:
    prefix: -notT
- id: min_score
  doc: '- restrict to those scoring at least N'
  type: string
  inputBinding:
    prefix: -minScore
- id: max_score
  doc: '- restrict to those scoring less than N'
  type: string
  inputBinding:
    prefix: -maxScore
- id: min_gap
  doc: '- restrict to those with gap size (tSize) >= minSize'
  type: string
  inputBinding:
    prefix: -minGap
- id: min_ali
  doc: '- restrict to those with at least given bases aligning'
  type: string
  inputBinding:
    prefix: -minAli
- id: max_ali
  doc: '- restrict to those with at most given bases aligning'
  type: string
  inputBinding:
    prefix: -maxAli
- id: minsize_t
  doc: '- restrict to those at least this big on target'
  type: string
  inputBinding:
    prefix: -minSizeT
- id: minsize_q
  doc: '- restrict to those at least this big on query'
  type: string
  inputBinding:
    prefix: -minSizeQ
- id: q_start_min
  doc: '- restrict to those with qStart at least N'
  type: string
  inputBinding:
    prefix: -qStartMin
- id: q_start_max
  doc: '- restrict to those with qStart less than N'
  type: string
  inputBinding:
    prefix: -qStartMax
- id: q_end_min
  doc: '- restrict to those with qEnd at least N'
  type: string
  inputBinding:
    prefix: -qEndMin
- id: q_end_max
  doc: '- restrict to those with qEnd less than N'
  type: string
  inputBinding:
    prefix: -qEndMax
- id: t_start_min
  doc: '- restrict to those with tStart at least N'
  type: string
  inputBinding:
    prefix: -tStartMin
- id: t_start_max
  doc: '- restrict to those with tStart less than N'
  type: string
  inputBinding:
    prefix: -tStartMax
- id: tend_min
  doc: '- restrict to those with tEnd at least N'
  type: string
  inputBinding:
    prefix: -tEndMin
- id: tend_max
  doc: '- restrict to those with tEnd less than N'
  type: string
  inputBinding:
    prefix: -tEndMax
- id: q_overlap_start
  doc: '- restrict to those where the query overlaps a region starting here'
  type: string
  inputBinding:
    prefix: -qOverlapStart
- id: q_overlap_end
  doc: '- restrict to those where the query overlaps a region ending here'
  type: string
  inputBinding:
    prefix: -qOverlapEnd
- id: t_overlap_start
  doc: '- restrict to those where the target overlaps a region starting here'
  type: string
  inputBinding:
    prefix: -tOverlapStart
- id: t_overlap_end
  doc: '- restrict to those where the target overlaps a region ending here'
  type: string
  inputBinding:
    prefix: -tOverlapEnd
- id: type
  doc: '- restrict to given type, maybe repeated to allow several types'
  type: string
  inputBinding:
    prefix: -type
- id: syn
  doc: '- do filtering based on synteny (tuned for human/mouse).  '
  type: boolean
  inputBinding:
    prefix: -syn
- id: min_top_score
  doc: '- Minimum score for top level alignments. default 300000'
  type: string
  inputBinding:
    prefix: -minTopScore
- id: min_syn_score
  doc: '- Min syntenic block score (def=200,000).  Default covers 27,000 bases including
    9,000  aligning--a very stringent requirement. '
  type: string
  inputBinding:
    prefix: -minSynScore
- id: min_syn_size
  doc: '- Min syntenic block size (def=20,000). -'
  type: string
  inputBinding:
    prefix: -minSynSize
- id: min_syn_ali
  doc: '- Min syntenic alignment size(def=10,000). -'
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
- id: fill
  doc: '- Only pass fills, not gaps. Only useful with -line.'
  type: boolean
  inputBinding:
    prefix: -fill
- id: gap
  doc: '- Only pass gaps, not fills. Only useful with -line.'
  type: boolean
  inputBinding:
    prefix: -gap
- id: line
  doc: '- Do this a line at a time, not recursing'
  type: boolean
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
- id: in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- netFilter
