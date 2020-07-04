class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/exonerate.cwl
inputs:
- id: custom_server
  doc: '[NULL] '
  type: boolean
  inputBinding:
    prefix: --customserver
- id: fast_a_suffix
  doc: '[.fa] '
  type: boolean
  inputBinding:
    prefix: --fastasuffix
- id: show_alignment
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --showalignment
- id: show_sugar
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showsugar
- id: show_cigar
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showcigar
- id: show_vulgar
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --showvulgar
- id: show_query_gff
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showquerygff
- id: show_target_gff
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showtargetgff
- id: ryo
  doc: '[NULL] '
  type: boolean
  inputBinding:
    prefix: --ryo
- id: single_pass
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --singlepass
- id: soft_mask_query
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmaskquery
- id: soft_mask_target
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmasktarget
- id: use_a_atla
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --useaatla
- id: forward_coordinates
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --forwardcoordinates
- id: splice_three
  doc: '[primate] '
  type: boolean
  inputBinding:
    prefix: --splice3
- id: splice_five
  doc: '[primate] '
  type: boolean
  inputBinding:
    prefix: --splice5
- id: force_g_tag
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --forcegtag
outputs: []
cwlVersion: v1.1
baseCommand:
- exonerate
