class: CommandLineTool
id: mendelscan_score.cwl
inputs:
- id: seg_score_case_ref
  doc: A case sample was called reference/wild-type (0.50/0.10)
  type: boolean
  inputBinding:
    prefix: --seg-score-case-ref
- id: seg_score_case_het
  doc: A case sample was called heterozygous (NA/0.50)
  type: boolean
  inputBinding:
    prefix: --seg-score-case-het
- id: seg_score_case_hom
  doc: A case sample was called homozygous variant (0.80/NA)
  type: boolean
  inputBinding:
    prefix: --seg-score-case-hom
- id: seg_score_control_het
  doc: case sample was called heterozygous (0.10/NA)
  type: string
  inputBinding:
    prefix: --seg-score-control-het
- id: seg_score_control_hom
  doc: case sample was called homozygous variant (0.01/0.10)
  type: string
  inputBinding:
    prefix: --seg-score-control-hom
- id: an_no_score_1
  doc: Score for intergenic mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-1
- id: an_no_score_2
  doc: Score for intronic mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-2
- id: an_no_score_3
  doc: Score for downstream mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-3
- id: an_no_score_4
  doc: Score for upstream mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-4
- id: an_no_score_5
  doc: Score for UTR mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-5
- id: an_no_score_6
  doc: Score for ncRNA mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-6
- id: an_no_score_7
  doc: Score for miRNA mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-7
- id: an_no_score_8
  doc: Score for synonymous coding mutations [0.05]
  type: boolean
  inputBinding:
    prefix: --anno-score-8
- id: an_no_score_9
  doc: Score for splice region mutations [0.20]
  type: boolean
  inputBinding:
    prefix: --anno-score-9
- id: an_no_score_10
  doc: for nonstop mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-10
- id: an_no_score_11
  doc: for missense mutations not predicted damaging [0.80]
  type: string
  inputBinding:
    prefix: --anno-score-11
- id: an_no_score_12
  doc: for missense mutations damaging by 1/3 algorithms [0.95]
  type: string
  inputBinding:
    prefix: --anno-score-12
- id: an_no_score_13
  doc: for missense mutations damaging by 2/3 algorithms [0.95]
  type: string
  inputBinding:
    prefix: --anno-score-13
- id: an_no_score_14
  doc: for missense mutations damaging by 3/3 algorithms [0.95]
  type: string
  inputBinding:
    prefix: --anno-score-14
- id: an_no_score_15
  doc: for essential splice site mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-15
- id: an_no_score_16
  doc: for frameshift mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-16
- id: an_no_score_17
  doc: for nonsense mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-17
outputs: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- score
