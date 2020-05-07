class: CommandLineTool
id: pbsDecode.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsDecode
