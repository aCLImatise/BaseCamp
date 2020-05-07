class: CommandLineTool
id: igdiscover_discoverjd.cwl
inputs:
- id: database
  doc: FASTA file with reference gene sequences
  type: string
  inputBinding:
    prefix: --database
- id: merge
  doc: 'Merge overlapping genes. Default: Enabled for D, disabled for J and V.'
  type: boolean
  inputBinding:
    prefix: --merge
- id: no_merge
  doc: Do not merge overlapping genes
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: gene
  doc: 'Which gene category to discover. Default: J'
  type: string
  inputBinding:
    prefix: --gene
- id: j_coverage
  doc: 'Require that the sequence covers at least PERCENT of the J gene. Default:
    90 when --gene=J; 0 otherwise'
  type: string
  inputBinding:
    prefix: --j-coverage
- id: allele_ratio
  doc: 'Required allele ratio. Works only for genes named "NAME*ALLELE". Default:
    0.2'
  type: string
  inputBinding:
    prefix: --allele-ratio
- id: cross_mapping_ratio
  doc: 'Ratio for detection of cross-mapping artifacts. Default: 0.1'
  type: string
  inputBinding:
    prefix: --cross-mapping-ratio
- id: min_count
  doc: 'Omit candidates with fewer than N exact occurrences in the input table. Default:
    1 for J; 10 for D; 100 for V'
  type: string
  inputBinding:
    prefix: --min-count
- id: no_perfect_matches
  doc: Do not filter out sequences for which the V assignment (or J for --gene=V)
    has at least one error
  type: boolean
  inputBinding:
    prefix: --no-perfect-matches
- id: d_core_length
  doc: 'Use only D core regions that have at least length L (only applies when --gene=D).
    Default: 6'
  type: string
  inputBinding:
    prefix: --d-core-length
- id: d_core
  doc: 'D core region location (only applies when --gene=D). Default: slice(2, -2,
    None)'
  type: string
  inputBinding:
    prefix: --d-core
- id: fast_a
  doc: Write discovered sequences to FASTA file
  type: string
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- discoverjd
