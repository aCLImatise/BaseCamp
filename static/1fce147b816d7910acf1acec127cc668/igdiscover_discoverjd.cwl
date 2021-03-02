class: CommandLineTool
id: igdiscover_discoverjd.cwl
inputs:
- id: in_database
  doc: FASTA file with reference gene sequences
  type: File?
  inputBinding:
    prefix: --database
- id: in_merge
  doc: "Merge overlapping genes. Default: Enabled for D,\ndisabled for J and V."
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_no_merge
  doc: Do not merge overlapping genes
  type: boolean?
  inputBinding:
    prefix: --no-merge
- id: in_gene
  doc: 'Which gene category to discover. Default: J'
  type: string?
  inputBinding:
    prefix: --gene
- id: in_j_coverage
  doc: "Require that the sequence covers at least PERCENT of\nthe J gene. Default:\
    \ 90 when --gene=J; 0 otherwise"
  type: long?
  inputBinding:
    prefix: --j-coverage
- id: in_allele_ratio
  doc: "Required allele ratio. Works only for genes named\n\"NAME*ALLELE\". Default:\
    \ 0.2"
  type: double?
  inputBinding:
    prefix: --allele-ratio
- id: in_cross_mapping_ratio
  doc: "Ratio for detection of cross-mapping artifacts.\nDefault: 0.1"
  type: double?
  inputBinding:
    prefix: --cross-mapping-ratio
- id: in_min_count
  doc: "Omit candidates with fewer than N exact occurrences in\nthe input table. Default:\
    \ 1 for J; 10 for D; 100 for V"
  type: long?
  inputBinding:
    prefix: --min-count
- id: in_no_perfect_matches
  doc: "Do not filter out sequences for which the V assignment\n(or J for --gene=V)\
    \ has at least one error"
  type: boolean?
  inputBinding:
    prefix: --no-perfect-matches
- id: in_d_core_length
  doc: "Use only D core regions that have at least length L\n(only applies when --gene=D).\
    \ Default: 6"
  type: long?
  inputBinding:
    prefix: --d-core-length
- id: in_d_core
  doc: "D core region location (only applies when --gene=D).\nDefault: slice(2, -2,\
    \ None)"
  type: long?
  inputBinding:
    prefix: --d-core
- id: in_fast_a
  doc: Write discovered sequences to FASTA file
  type: File?
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- discoverjd
