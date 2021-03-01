class: CommandLineTool
id: mafRanges.cwl
inputs:
- id: in_other_db
  doc: "Output ranges only for alignments that include oDb.\noDB can be comma-separated\
    \ list."
  type: string?
  inputBinding:
    prefix: -otherDb
- id: in_not_all_o_gap
  doc: Don't include bases for which all other species have a gap.
  type: boolean?
  inputBinding:
    prefix: -notAllOGap
- id: in_in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafRanges
