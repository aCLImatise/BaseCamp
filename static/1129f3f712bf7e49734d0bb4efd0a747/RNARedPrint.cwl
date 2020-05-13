class: CommandLineTool
id: RNARedPrint.cwl
inputs:
- id: num
  doc: '- Sets number of generated sequences (default 10)'
  type: string
  inputBinding:
    prefix: --num
- id: count
  doc: '- Simply compute the partition function and report the result.'
  type: boolean
  inputBinding:
    prefix: --count
- id: prefix
  doc: '- Prefix path for locating the TD libraries'
  type: boolean
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- RNARedPrint
