class: CommandLineTool
id: mafRanges.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mafRanges
