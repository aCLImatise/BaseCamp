class: CommandLineTool
id: chainFilter.cwl
inputs:
- id: q
  doc: ',chr2 - restrict query side sequence to those named'
  type: string
  inputBinding:
    prefix: -q
- id: not_q
  doc: ',chr2 - restrict query side sequence to those not named'
  type: string
  inputBinding:
    prefix: -notQ
- id: t
  doc: ',chr2 - restrict target side sequence to those named'
  type: string
  inputBinding:
    prefix: -t
- id: not_t
  doc: ',chr2 - restrict target side sequence to those not named'
  type: string
  inputBinding:
    prefix: -notT
- id: only
  doc: one with ID number matching N
  type: string
  inputBinding:
    prefix: '- only'
- id: restrict
  doc: those scoring at least N
  type: string
  inputBinding:
    prefix: '- restrict'
- id: restrict
  doc: those scoring less than N
  type: string
  inputBinding:
    prefix: '- restrict'
- id: q_start_min
  doc: those with qStart at least N
  type: string
  inputBinding:
    prefix: -qStartMin
- id: q_start_max
  doc: those with qStart less than N
  type: string
  inputBinding:
    prefix: -qStartMax
- id: restrict
  doc: those with qEnd at least N
  type: string
  inputBinding:
    prefix: '- restrict'
- id: restrict
  doc: those with qEnd less than N
  type: string
  inputBinding:
    prefix: '- restrict'
- id: t_start_min
  doc: those with tStart at least N
  type: string
  inputBinding:
    prefix: -tStartMin
- id: t_start_max
  doc: those with tStart less than N
  type: string
  inputBinding:
    prefix: -tStartMax
- id: restrict
  doc: those with tEnd at least N
  type: string
  inputBinding:
    prefix: '- restrict'
- id: restrict
  doc: those with tEnd less than N
  type: string
  inputBinding:
    prefix: '- restrict'
- id: q_overlap_start
  doc: those where the query overlaps a region starting here
  type: string
  inputBinding:
    prefix: -qOverlapStart
- id: q_overlap_end
  doc: those where the query overlaps a region ending here
  type: string
  inputBinding:
    prefix: -qOverlapEnd
- id: t_overlap_start
  doc: those where the target overlaps a region starting here
  type: string
  inputBinding:
    prefix: -tOverlapStart
- id: t_overlap_end
  doc: those where the target overlaps a region ending here
  type: string
  inputBinding:
    prefix: -tOverlapEnd
- id: strand
  doc: =?    -restrict strand (to + or -)
  type: boolean
  inputBinding:
    prefix: -strand
- id: long
  doc: -output in long format
  type: boolean
  inputBinding:
    prefix: -long
- id: zero_gap
  doc: -get rid of gaps of length zero
  type: boolean
  inputBinding:
    prefix: -zeroGap
- id: min_gapless
  doc: with minimum gapless block of at least N
  type: string
  inputBinding:
    prefix: -minGapless
- id: qm_in_gap
  doc: '- pass those with minimum gap size of at least N'
  type: string
  inputBinding:
    prefix: -qMinGap
- id: tm_in_gap
  doc: '- pass those with minimum gap size of at least N'
  type: string
  inputBinding:
    prefix: -tMinGap
- id: qmax_gap
  doc: '- pass those with maximum gap size no larger than N'
  type: string
  inputBinding:
    prefix: -qMaxGap
- id: tmax_gap
  doc: '- pass those with maximum gap size no larger than N'
  type: string
  inputBinding:
    prefix: -tMaxGap
- id: qm_in_size
  doc: '- minimum size of spanned query region'
  type: string
  inputBinding:
    prefix: -qMinSize
- id: q_maxsize
  doc: '- maximum size of spanned query region'
  type: string
  inputBinding:
    prefix: -qMaxSize
- id: tm_in_size
  doc: '- minimum size of spanned target region'
  type: string
  inputBinding:
    prefix: -tMinSize
- id: tmax_size
  doc: '- maximum size of spanned target region'
  type: string
  inputBinding:
    prefix: -tMaxSize
- id: no_random
  doc: "- suppress chains involving '_random' chromosomes"
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: no_hap
  doc: "- suppress chains involving '_hap|_alt' chromosomes"
  type: boolean
  inputBinding:
    prefix: -noHap
outputs: []
cwlVersion: v1.1
baseCommand:
- chainFilter
