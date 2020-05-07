class: CommandLineTool
id: recycle.py.cwl
inputs:
- id: graph
  doc: '(spades 3.50+) assembly graph FASTG file to process; recommended for spades
    3.5: before_rr.fastg, for spades 3.6+:assembly_graph.fastg'
  type: string
  inputBinding:
    prefix: --graph
- id: max_k
  doc: integer reflecting maximum k value used by the assembler
  type: long
  inputBinding:
    prefix: --max_k
- id: bam
  doc: BAM file resulting from aligning reads to contigs file, filtering for best
    matches
  type: string
  inputBinding:
    prefix: --bam
- id: length
  doc: 'minimum length required for reporting [default: 1000]'
  type: long
  inputBinding:
    prefix: --length
- id: max_cv
  doc: 'coefficient of variation used for pre-selection [default: 0.5, higher--> less
    restrictive]'
  type: long
  inputBinding:
    prefix: --max_CV
- id: iso
  doc: True or False value reflecting whether data sequenced was an isolated strain
  type: string
  inputBinding:
    prefix: --iso
- id: output_dir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- recycle.py
