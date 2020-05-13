class: CommandLineTool
id: SnpSift_split.cwl
inputs:
- id: default
  doc: ': Split by chromosome (one file per chromosome).'
  type: string
  inputBinding:
    position: 0
- id: j
  doc: ': Join all files in command line (output = STDOUT).'
  type: boolean
  inputBinding:
    prefix: -j
- id: l
  doc: ": Split by 'num' lines."
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- split
