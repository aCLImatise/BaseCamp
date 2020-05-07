class: CommandLineTool
id: extract_proteome_from_gff.cwl
inputs:
- id: o
  doc: output suffix [proteome.faa]
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: f
  doc: filter sequences with missing data
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: output directory
  type: string
  inputBinding:
    prefix: -d
- id: w
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_proteome_from_gff
