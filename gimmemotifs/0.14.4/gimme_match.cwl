class: CommandLineTool
id: gimme_match.cwl
inputs:
- id: pfm_file
  doc: File with pfms
  type: string
  inputBinding:
    position: 0
- id: d
  doc: 'File with pfms to match against (default: gimme.vertebrate.v5.0.pfm)'
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: Number of matches to return (default 1)
  type: long
  inputBinding:
    prefix: -n
- id: o
  doc: Output file with graphical report (png, svg, ps, pdf)
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- match
