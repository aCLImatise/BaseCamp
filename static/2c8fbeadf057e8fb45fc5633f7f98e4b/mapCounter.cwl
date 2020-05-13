class: CommandLineTool
id: mapCounter.cwl
inputs:
- id: bigwig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seg
  doc: Outputs in SEG format
  type: boolean
  inputBinding:
    prefix: --seg
- id: window
  doc: Specify the size of non-overlapping windows [1000]
  type: long
  inputBinding:
    prefix: --window
- id: list
  doc: List all chromosomes in BigWig file
  type: boolean
  inputBinding:
    prefix: --list
- id: chromosome
  doc: Specify the entries and order of sequences to analyze [ALL], the <string> should
    be a comma-delimited list (NO spaces)
  type: string
  inputBinding:
    prefix: --chromosome
outputs: []
cwlVersion: v1.1
baseCommand:
- mapCounter
