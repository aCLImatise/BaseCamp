class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ananse_network.cwl
inputs:
- id: binding
  doc: All TFs binding file
  type: File
  inputBinding:
    prefix: --binding
- id: _expression_scores
  doc: '[FILE [FILE ...]], --expression [FILE [FILE ...]] Expression scores'
  type: boolean
  inputBinding:
    prefix: -e
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: genome
  doc: Genome
  type: string
  inputBinding:
    prefix: --genome
- id: annotation
  doc: Gene annotation in BED12 format
  type: string
  inputBinding:
    prefix: --annotation
- id: _files_correlation
  doc: '[FILE [FILE ...]], --corrfiles [FILE [FILE ...]] Files with correlation'
  type: boolean
  inputBinding:
    prefix: -c
- id: n_core
  doc: Number of core used
  type: string
  inputBinding:
    prefix: --ncore
- id: include_promoter
  doc: Include or exclude promoter peaks (<= TSS +/- 2kb) in network inference. By
    default promoter peaks are excluded.
  type: boolean
  inputBinding:
    prefix: --include-promoter
- id: include_enhancer
  doc: Include or exclude enhancer peaks (> TSS +/- 2kb) in network inference. By
    default enhancer peaks are included.
  type: boolean
  inputBinding:
    prefix: --include-enhancer
- id: an_anse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: network
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ananse
- network
