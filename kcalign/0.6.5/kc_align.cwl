class: CommandLineTool
id: ../../../kc_align.cwl
inputs:
- id: reference
  doc: Reference sequence
  type: string
  inputBinding:
    prefix: --reference
- id: sequences
  doc: Other sequences to align
  type: string
  inputBinding:
    prefix: --sequences
- id: start
  doc: 1-based start position (required in genome mode)
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: 1-based end position (required in genome mode)
  type: string
  inputBinding:
    prefix: --end
- id: mode
  doc: Alignment mode (genome, gene, or mixed) (required)
  type: string
  inputBinding:
    prefix: --mode
- id: compress
  doc: Compress identical sequences
  type: boolean
  inputBinding:
    prefix: --compress
- id: parallel
  doc: Enable parallelization of homology search
  type: boolean
  inputBinding:
    prefix: --parallel
- id: table
  doc: Choose alternative translation table (See https://www. ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi
    for values)
  type: string
  inputBinding:
    prefix: --table
outputs: []
cwlVersion: v1.1
baseCommand:
- kc-align
