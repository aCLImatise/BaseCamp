class: CommandLineTool
id: mb_generate_negative_set.cwl
inputs:
- id: gff
  doc: GFF file
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: path to genome
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: prefix
  type: string
  inputBinding:
    position: 2
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    position: 3
- id: number
  doc: set number or random drawings
  type: string
  inputBinding:
    prefix: --number
- id: width
  doc: set number or nt +/- selected position
  type: string
  inputBinding:
    prefix: --width
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-generate-negative-set
