class: CommandLineTool
id: getRnaPred.cwl
inputs:
- id: acc
  doc: start  end
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getRnaPred
