class: CommandLineTool
id: _union.cwl
inputs:
- id: in_overlap_file
  doc: "outfile    [*.union] Sequence overlaps output file\n(optional)"
  type: File
  inputBinding:
    prefix: -overlapfile
- id: in_feature
  doc: boolean    [N] Use feature information
  type: boolean
  inputBinding:
    prefix: -feature
- id: in_source
  doc: boolean    [N] Create source features
  type: boolean
  inputBinding:
    prefix: -source
- id: in_find_overlap
  doc: boolean    [N] Look for overlaps when joining
  type: boolean
  inputBinding:
    prefix: -findoverlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_overlap_file
  doc: "outfile    [*.union] Sequence overlaps output file\n(optional)"
  type: File
  outputBinding:
    glob: $(inputs.in_overlap_file)
cwlVersion: v1.1
baseCommand:
- _union
