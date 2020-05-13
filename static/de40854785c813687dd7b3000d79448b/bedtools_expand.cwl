class: CommandLineTool
id: bedtools_expand.cwl
inputs:
- id: chr1
  doc: 10      20      1       10
  type: string
  inputBinding:
    position: 0
- id: chr1
  doc: 10      20      2       20
  type: string
  inputBinding:
    position: 1
- id: chr1
  doc: 10      20      3       30
  type: string
  inputBinding:
    position: 2
- id: chr1
  doc: 40      50      4       40
  type: string
  inputBinding:
    position: 3
- id: chr1
  doc: 40      50      5       50
  type: string
  inputBinding:
    position: 4
- id: chr1
  doc: 40      50      6       60
  type: string
  inputBinding:
    position: 5
- id: i
  doc: Input file. Assumes "stdin" if omitted.
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: Specify the column (1-based) that should be summarized. - Required.
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- expand
