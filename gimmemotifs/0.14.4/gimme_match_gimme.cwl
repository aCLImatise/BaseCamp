class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gimme_match_gimme.cwl
inputs:
- id: file_pfms_match
  doc: 'File with pfms to match against (default: gimme.vertebrate.v5.0.pfm)'
  type: string
  inputBinding:
    prefix: -d
- id: number_return_default
  doc: Number of matches to return (default 1)
  type: long
  inputBinding:
    prefix: -n
- id: output_file_pdf
  doc: Output file with graphical report (png, svg, ps, pdf)
  type: File
  inputBinding:
    prefix: -o
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: pfm_file
  doc: File with pfms
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- match
- gimme
