class: CommandLineTool
id: translate.cwl
inputs:
- id: a
  doc: ': translate in full, with stops; no individual ORFs'
  type: boolean
  inputBinding:
    prefix: -a
- id: l
  doc: ': report only ORFs greater than minlen (default 20)'
  type: long
  inputBinding:
    prefix: -l
- id: m
  doc: ': require ORFs to start with AUG/Met'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: ': save results in output file'
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: ': quiet; silence banner, for piping or redirection'
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: ': with -a, set stop character to <stopchar>'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- translate
