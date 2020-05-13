class: CommandLineTool
id: tandem_genotypes.cwl
inputs:
- id: micro_sat_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignments_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genes
  doc: read genes from a genePred or BED file
  type: File
  inputBinding:
    prefix: --genes
- id: mis_map
  doc: ignore any alignment with mismap probability > PROB (default=1e-06)
  type: string
  inputBinding:
    prefix: --mismap
- id: post_mask
  doc: ignore mostly-lowercase alignments (default=1)
  type: string
  inputBinding:
    prefix: --postmask
- id: promoter
  doc: promoter length (default=300)
  type: string
  inputBinding:
    prefix: --promoter
- id: select
  doc: 'select: all repeats (0), non-intergenic repeats (1), non-intergenic non-intronic
    repeats (2) (default=0)'
  type: string
  inputBinding:
    prefix: --select
- id: min_unit
  doc: ignore repeats with unit shorter than BP (default=2)
  type: string
  inputBinding:
    prefix: --min-unit
- id: far
  doc: require alignment >= BP beyond both sides of a repeat (default=100)
  type: string
  inputBinding:
    prefix: --far
- id: near
  doc: count insertions <= BP beyond a repeat (default=60)
  type: string
  inputBinding:
    prefix: --near
- id: mode
  doc: L=lenient, S=strict (default=L)
  type: string
  inputBinding:
    prefix: --mode
- id: scores
  doc: importance scores for gene parts
  type: File
  inputBinding:
    prefix: --scores
- id: verbose
  doc: show more details
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- tandem-genotypes
