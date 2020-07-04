class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mendelscan_score.cwl
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
- id: an_no_score_one
  doc: Score for intergenic mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-1
- id: an_no_score_two
  doc: Score for intronic mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-2
- id: an_no_score_three
  doc: Score for downstream mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-3
- id: an_no_score_four
  doc: Score for upstream mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-4
- id: an_no_score_five
  doc: Score for UTR mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-5
- id: an_no_score_six
  doc: Score for ncRNA mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-6
- id: an_no_score_seven
  doc: Score for miRNA mutations [0.01]
  type: boolean
  inputBinding:
    prefix: --anno-score-7
- id: an_no_score_eight
  doc: Score for synonymous coding mutations [0.05]
  type: boolean
  inputBinding:
    prefix: --anno-score-8
- id: an_no_score_nine
  doc: Score for splice region mutations [0.20]
  type: boolean
  inputBinding:
    prefix: --anno-score-9
- id: an_no_score_one_zero
  doc: for nonstop mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-10
- id: an_no_score_one_one
  doc: for missense mutations not predicted damaging [0.80]
  type: string
  inputBinding:
    prefix: --anno-score-11
- id: an_no_score_one_two
  doc: for missense mutations damaging by 1/3 algorithms [0.95]
  type: string
  inputBinding:
    prefix: --anno-score-12
- id: an_no_score_one_three
  doc: for missense mutations damaging by 2/3 algorithms [0.95]
  type: string
  inputBinding:
    prefix: --anno-score-13
- id: an_no_score_one_four
  doc: for missense mutations damaging by 3/3 algorithms [0.95]
  type: string
  inputBinding:
    prefix: --anno-score-14
- id: an_no_score_one_five
  doc: for essential splice site mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-15
- id: an_no_score_one_six
  doc: for frameshift mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-16
- id: an_no_score_one_seven
  doc: for nonsense mutations [1.00]
  type: string
  inputBinding:
    prefix: --anno-score-17
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: score
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- score
