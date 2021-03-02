class: CommandLineTool
id: checkCoverageGaps.cwl
inputs:
- id: in_all_parts
  doc: If set then include _hap and _random and other wierd chroms
  type: boolean?
  inputBinding:
    prefix: -allParts
- id: in_female
  doc: set then don't check chrY
  type: string?
  inputBinding:
    prefix: -female
- id: in_no_comma
  doc: "- Don't put commas in biggest gap output"
  type: boolean?
  inputBinding:
    prefix: -noComma
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkCoverageGaps
