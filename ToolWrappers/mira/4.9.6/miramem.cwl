class: CommandLineTool
id: miramem.cwl
inputs:
- id: in_as
  doc: :amm, -AS:kpmf, -AS:mps
  type: boolean?
  inputBinding:
    prefix: -AS
- id: in_sk
  doc: :mhim, -SK:mchr (both runtime); -SK:mhpr (accuracy)
  type: boolean?
  inputBinding:
    prefix: -SK
- id: in_mira_talk_at_freelists_dot_org
  doc: To report bugs or ask for features, please use the SourceForge ticketing
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- miramem
