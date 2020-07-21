class: CommandLineTool
id: ../../../pbsDecode.cwl
inputs:
- id: start
  doc: Decode only the subsequence starting at position <sidx>. Indexing starts with
    1.
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: Decode only the subsequence ending at position <eidx>. Indexing starts with
    1.
  type: string
  inputBinding:
    prefix: --end
- id: discard_gaps
  doc: 'Do not report gaps in the PBS.  '
  type: boolean
  inputBinding:
    prefix: --discard-gaps
- id: input_dot_bin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: code_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsDecode
