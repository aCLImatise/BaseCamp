class: CommandLineTool
id: ../../../mafRanges.cwl
inputs:
- id: other_db
  doc: Output ranges only for alignments that include oDb. oDB can be comma-separated
    list.
  type: string
  inputBinding:
    prefix: -otherDb
- id: not_all_o_gap
  doc: Don't include bases for which all other species have a gap.
  type: boolean
  inputBinding:
    prefix: -notAllOGap
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafRanges
