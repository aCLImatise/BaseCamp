class: CommandLineTool
id: ngm_utils_debug.cwl
inputs:
- id: ngm_utils
  doc: '[--] <name>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ngm-utils-debug
