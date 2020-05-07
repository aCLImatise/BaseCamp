class: CommandLineTool
id: pbmerge.cwl
inputs:
- id: input
  doc: 'FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN'
  type: string
  inputBinding:
    position: 0
- id: o
  doc: STR   Output BAM filename. Writes to stdout if not provided.
  type: boolean
  inputBinding:
    prefix: -o
- id: no_pbi
  doc: Disables creation of PBI index file. PBI always disabled when writing to stdout.
  type: boolean
  inputBinding:
    prefix: --no-pbi
outputs: []
cwlVersion: v1.1
baseCommand:
- pbmerge
