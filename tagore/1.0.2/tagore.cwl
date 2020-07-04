class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tagore.cwl
inputs:
- id: input
  doc: Input BED-like file
  type: string
  inputBinding:
    prefix: --input
- id: p
  doc: '[output file prefix], --prefix [output file prefix]  Output prefix [Default:
    "out"]'
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: '[hg78/hg38], --build [hg78/hg38]                     Human genome build to
    use [Default: hg38]'
  type: boolean
  inputBinding:
    prefix: -b
- id: force
  doc: Overwrite output files if they exist already
  type: boolean
  inputBinding:
    prefix: --force
- id: of_mt
  doc: '[png/pdf], --oformat [png/pdf]                    Output format for conversion
    (pdf requires rsvg-convert)'
  type: boolean
  inputBinding:
    prefix: -ofmt
- id: verbose
  doc: Display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: hg_seven_eight_slash_hg_three_eight
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: png_slash_pdf
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tagore
