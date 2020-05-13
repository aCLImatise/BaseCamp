class: CommandLineTool
id: lofreq_filter.cwl
inputs:
- id: sb_no_compound
  doc: Don't use compound filter
  type: boolean
  inputBinding:
    prefix: --sb-no-compound
- id: sb_incl_indels
  doc: Apply SB filter to indels as well
  type: boolean
  inputBinding:
    prefix: --sb-incl-indels
- id: only_indels
  doc: Keep InDels only
  type: boolean
  inputBinding:
    prefix: --only-indels
- id: only_sn_vs
  doc: Keep SNVs only
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: print_all
  doc: Print all, not just passed variants
  type: boolean
  inputBinding:
    prefix: --print-all
- id: no_defaults
  doc: Remove all default filter settings
  type: boolean
  inputBinding:
    prefix: --no-defaults
- id: verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- filter
