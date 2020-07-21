class: CommandLineTool
id: ../../../pass.cwl
inputs:
- id: range
  doc: '600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \ '
  type: string
  inputBinding:
    prefix: -range
- id: tags
  doc: '/1 /2 > paired_alignments.sam '
  type: boolean
  inputBinding:
    prefix: -tags
- id: lib_type
  doc: 'F3  > paired_alignments.sam '
  type: string
  inputBinding:
    prefix: -lib_type
- id: _resulttxt
  doc: '[-phred64] > result.txt '
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- pass
