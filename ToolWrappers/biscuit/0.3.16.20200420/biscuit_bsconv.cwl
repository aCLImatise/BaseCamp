class: CommandLineTool
id: biscuit_bsconv.cwl
inputs:
- id: in_region
  doc: region.
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_filter_unclear_bsstrand
  doc: filter unclear bs-strand (YD:u) reads [OFF].
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_filter_maximum_cph_retention
  doc: 'filter: maximum CpH retention [Inf]'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_filter_maximum_cph_retention_fraction
  doc: 'filter: maximum CpH retention fraction [1.0]'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_filter_maximum_cpa
  doc: 'filter: maximum CpA retention [Inf]'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_filter_maximum_cpc
  doc: 'filter: maximum CpC retention [Inf]'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_filter_maximum_cpt
  doc: 'filter: maximum CpT retention [Inf]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_print_tab_cpac
  doc: print in tab, CpA_R, CpA_C, CpC_R, CpC_C, CpG_R, CpG_C, CpT_R, CpT_C
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_show_filtered_instead
  doc: show filtered instead of remained [False]
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_bs_conv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_dot_bam
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biscuit
- bsconv
