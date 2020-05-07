class: CommandLineTool
id: translate.cwl
inputs:
- id: f
  doc: '{0,1,2}, --frame {0,1,2}'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- translate
