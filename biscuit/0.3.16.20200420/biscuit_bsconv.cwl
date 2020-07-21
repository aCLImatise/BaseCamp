class: CommandLineTool
id: ../../../biscuit_bsconv.cwl
inputs:
- id: region
  doc: region.
  type: boolean
  inputBinding:
    prefix: -g
- id: filter_unclear_bsstrand
  doc: filter unclear bs-strand (YD:u) reads [OFF].
  type: boolean
  inputBinding:
    prefix: -u
- id: filter_maximum_cph_retention
  doc: 'filter: maximum CpH retention [Inf]'
  type: boolean
  inputBinding:
    prefix: -m
- id: filter_maximum_cph_retention_fraction
  doc: 'filter: maximum CpH retention fraction [1.0]'
  type: boolean
  inputBinding:
    prefix: -f
- id: filter_maximum_cpa
  doc: 'filter: maximum CpA retention [Inf]'
  type: boolean
  inputBinding:
    prefix: -a
- id: filter_maximum_cpc
  doc: 'filter: maximum CpC retention [Inf]'
  type: boolean
  inputBinding:
    prefix: -c
- id: filter_maximum_cpt
  doc: 'filter: maximum CpT retention [Inf]'
  type: boolean
  inputBinding:
    prefix: -t
- id: print_tab_cpar
  doc: print in tab, CpA_R, CpA_C, CpC_R, CpC_C, CpG_R, CpG_C, CpT_R, CpT_C
  type: boolean
  inputBinding:
    prefix: -b
- id: show_filtered_instead
  doc: show filtered instead of remained [False]
  type: boolean
  inputBinding:
    prefix: -v
- id: bs_conv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- bsconv
