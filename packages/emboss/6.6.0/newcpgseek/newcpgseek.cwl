class: CommandLineTool
id: newcpgseek.cwl
inputs:
- id: in_score
  doc: integer    [17] CpG score (Integer from 1 to 200)
  type: boolean
  inputBinding:
    prefix: -score
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- newcpgseek
