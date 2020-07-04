class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmagick_backtrans_align.cwl
inputs:
- id: out_file
  doc: 'Output destination. Default: STDOUT'
  type: string
  inputBinding:
    prefix: --out-file
- id: translation_table
  doc: 'Translation table to use. [Default: standard- ambiguous]'
  type: string
  inputBinding:
    prefix: --translation-table
- id: fail_action
  doc: 'Action to take on an ambiguous codon [default: fail]'
  type: string
  inputBinding:
    prefix: --fail-action
- id: protein_align
  doc: Protein Alignment
  type: string
  inputBinding:
    position: 0
- id: nucl_align
  doc: FASTA Alignment
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- backtrans-align
