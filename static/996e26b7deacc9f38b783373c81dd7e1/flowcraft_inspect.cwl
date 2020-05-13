class: CommandLineTool
id: flowcraft_inspect.cwl
inputs:
- id: i
  doc: Specify the nextflow trace file.
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: Set the refresh frequency for the continuous inspect functions
  type: string
  inputBinding:
    prefix: -r
- id: mode
  doc: Specify the inspection run mode.
  type: string
  inputBinding:
    prefix: --mode
- id: url
  doc: Specify the URL to where the data should be broadcast
  type: string
  inputBinding:
    prefix: --url
- id: pretty
  doc: Pretty inspection mode that removes usual reporting processes.
  type: boolean
  inputBinding:
    prefix: --pretty
outputs: []
cwlVersion: v1.1
baseCommand:
- flowcraft
- inspect
