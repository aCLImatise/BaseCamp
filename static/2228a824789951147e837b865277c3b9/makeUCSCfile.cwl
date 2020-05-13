class: CommandLineTool
id: makeUCSCfile.cwl
inputs:
- id: circo_s
  doc: <chrN:XXX-YYY|genome> (output only a specific region for circos[no header])
  type: boolean
  inputBinding:
    prefix: -circos
- id: skip_chr
  doc: (Skip this chromosome when making bedGraph)
  type: string
  inputBinding:
    prefix: -skipChr
- id: noheader
  doc: (don't print track lines, useful when making bigWigs)
  type: boolean
  inputBinding:
    prefix: -noheader
outputs: []
cwlVersion: v1.1
baseCommand:
- makeUCSCfile
