class: CommandLineTool
id: ../../../chainFilter.cwl
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
- id: in_id
  doc: '- only get one with ID number matching N'
  type: long
  inputBinding:
    prefix: -id
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
- id: in_strand
  doc: =?    -restrict strand (to + or -)
  type: boolean
  inputBinding:
    prefix: -strand
- id: in_long
  doc: -output in long format
  type: boolean
  inputBinding:
    prefix: -long
- id: in_zero_gap
  doc: -get rid of gaps of length zero
  type: boolean
  inputBinding:
    prefix: -zeroGap
- id: in_min_gapless
  doc: '- pass those with minimum gapless block of at least N'
  type: string
  inputBinding:
    prefix: -minGapless
- id: in_qm_in_gap
  doc: '- pass those with minimum gap size of at least N'
  type: long
  inputBinding:
    prefix: -qMinGap
- id: in_tm_in_gap
  doc: '- pass those with minimum gap size of at least N'
  type: long
  inputBinding:
    prefix: -tMinGap
- id: in_qmax_gap
  doc: '- pass those with maximum gap size no larger than N'
  type: long
  inputBinding:
    prefix: -qMaxGap
- id: in_tmax_gap
  doc: '- pass those with maximum gap size no larger than N'
  type: long
  inputBinding:
    prefix: -tMaxGap
- id: in_qm_in_size
  doc: '- minimum size of spanned query region'
  type: long
  inputBinding:
    prefix: -qMinSize
- id: in_q_maxsize
  doc: '- maximum size of spanned query region'
  type: long
  inputBinding:
    prefix: -qMaxSize
- id: in_tm_in_size
  doc: '- minimum size of spanned target region'
  type: long
  inputBinding:
    prefix: -tMinSize
- id: in_tmax_size
  doc: '- maximum size of spanned target region'
  type: long
  inputBinding:
    prefix: -tMaxSize
- id: in_no_random
  doc: "- suppress chains involving '_random' chromosomes"
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: in_no_hap
  doc: "- suppress chains involving '_hap|_alt' chromosomes"
  type: boolean
  inputBinding:
    prefix: -noHap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chainFilter
