class: CommandLineTool
id: pygvcf2coverage.cwl
inputs:
- id: in_threshold
  doc: DP threshold
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_no_merge
  doc: Do not merge entries
  type: boolean?
  inputBinding:
    prefix: --no_merge
- id: in_distance
  doc: "Merging distance\n"
  type: string?
  inputBinding:
    prefix: --distance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pygvcf2coverage
