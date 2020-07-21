class: CommandLineTool
id: ../../../analyzeRNA.pl.cwl
inputs:
- id: or
  doc: ': analyzeRNA.pl <custom RNA/GTF file> <organism|none>  [additional options...]'
  type: boolean
  inputBinding:
    prefix: -or-
- id: rna_vertical_line_repeats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: additional
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeRNA.pl
