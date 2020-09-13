class: CommandLineTool
id: ../../../netFilter.cwl
inputs:
- id: in_chr_restrict_query_sequence_named
  doc: ',chr2 - restrict query side sequence to those named'
  type: long
  inputBinding:
    prefix: -q
- id: in_not_q
  doc: ',chr2 - restrict query side sequence to those not named'
  type: long
  inputBinding:
    prefix: -notQ
- id: in_chr_restrict_target_sequence_named
  doc: ',chr2 - restrict target side sequence to those named'
  type: long
  inputBinding:
    prefix: -t
- id: in_not_t
  doc: ',chr2 - restrict target side sequence to those not named'
  type: long
  inputBinding:
    prefix: -notT
- id: in_min_score
  doc: '- restrict to those scoring at least N'
  type: string
  inputBinding:
    prefix: -minScore
- id: in_max_score
  doc: '- restrict to those scoring less than N'
  type: string
  inputBinding:
    prefix: -maxScore
- id: in_min_gap
  doc: '- restrict to those with gap size (tSize) >= minSize'
  type: long
  inputBinding:
    prefix: -minGap
- id: in_min_ali
  doc: '- restrict to those with at least given bases aligning'
  type: string
  inputBinding:
    prefix: -minAli
- id: in_max_ali
  doc: '- restrict to those with at most given bases aligning'
  type: string
  inputBinding:
    prefix: -maxAli
- id: in_minsize_t
  doc: '- restrict to those at least this big on target'
  type: string
  inputBinding:
    prefix: -minSizeT
- id: in_minsize_q
  doc: '- restrict to those at least this big on query'
  type: string
  inputBinding:
    prefix: -minSizeQ
- id: in_q_start_min
  doc: '- restrict to those with qStart at least N'
  type: string
  inputBinding:
    prefix: -qStartMin
- id: in_q_start_max
  doc: '- restrict to those with qStart less than N'
  type: string
  inputBinding:
    prefix: -qStartMax
- id: in_q_end_min
  doc: '- restrict to those with qEnd at least N'
  type: string
  inputBinding:
    prefix: -qEndMin
- id: in_q_end_max
  doc: '- restrict to those with qEnd less than N'
  type: string
  inputBinding:
    prefix: -qEndMax
- id: in_t_start_min
  doc: '- restrict to those with tStart at least N'
  type: string
  inputBinding:
    prefix: -tStartMin
- id: in_t_start_max
  doc: '- restrict to those with tStart less than N'
  type: string
  inputBinding:
    prefix: -tStartMax
- id: in_tend_min
  doc: '- restrict to those with tEnd at least N'
  type: string
  inputBinding:
    prefix: -tEndMin
- id: in_tend_max
  doc: '- restrict to those with tEnd less than N'
  type: string
  inputBinding:
    prefix: -tEndMax
- id: in_q_overlap_start
  doc: '- restrict to those where the query overlaps a region starting here'
  type: string
  inputBinding:
    prefix: -qOverlapStart
- id: in_q_overlap_end
  doc: '- restrict to those where the query overlaps a region ending here'
  type: string
  inputBinding:
    prefix: -qOverlapEnd
- id: in_t_overlap_start
  doc: '- restrict to those where the target overlaps a region starting here'
  type: string
  inputBinding:
    prefix: -tOverlapStart
- id: in_t_overlap_end
  doc: '- restrict to those where the target overlaps a region ending here'
  type: string
  inputBinding:
    prefix: -tOverlapEnd
- id: in_type
  doc: '- restrict to given type, maybe repeated to allow several types'
  type: string
  inputBinding:
    prefix: -type
- id: in_syn
  doc: '- do filtering based on synteny (tuned for human/mouse).'
  type: boolean
  inputBinding:
    prefix: -syn
- id: in_min_top_score
  doc: '- Minimum score for top level alignments. default 300000'
  type: long
  inputBinding:
    prefix: -minTopScore
- id: in_min_syn_score
  doc: "- Min syntenic block score (def=200,000).\nDefault covers 27,000 bases including\
    \ 9,000\naligning--a very stringent requirement."
  type: long
  inputBinding:
    prefix: -minSynScore
- id: in_min_syn_size
  doc: '- Min syntenic block size (def=20,000). -'
  type: long
  inputBinding:
    prefix: -minSynSize
- id: in_min_syn_ali
  doc: '- Min syntenic alignment size(def=10,000). -'
  type: long
  inputBinding:
    prefix: -minSynAli
- id: in_max_far
  doc: '- Max distance to allow synteny (def=200,000).'
  type: long
  inputBinding:
    prefix: -maxFar
- id: in_non_syn
  doc: '- do inverse filtering based on synteny (tuned for human/mouse).'
  type: boolean
  inputBinding:
    prefix: -nonsyn
- id: in_chimps_yn
  doc: '- do filtering based on synteny (tuned for human/chimp).'
  type: boolean
  inputBinding:
    prefix: -chimpSyn
- id: in_fill
  doc: '- Only pass fills, not gaps. Only useful with -line.'
  type: boolean
  inputBinding:
    prefix: -fill
- id: in_gap
  doc: '- Only pass gaps, not fills. Only useful with -line.'
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_line
  doc: '- Do this a line at a time, not recursing'
  type: boolean
  inputBinding:
    prefix: -line
- id: in_no_random
  doc: "- suppress chains involving 'random' chromosomes"
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: in_no_hap
  doc: "- suppress chains involving chromosome names inc '_hap|_alt'"
  type: boolean
  inputBinding:
    prefix: -noHap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- netFilter
