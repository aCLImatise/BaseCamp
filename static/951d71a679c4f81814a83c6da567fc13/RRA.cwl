class: CommandLineTool
id: RRA.cwl
inputs:
- id: in_format_item_i
  doc: '. Format: <item id> <group id> <list id> <value> [<probability>] [<chosen>]'
  type: File?
  inputBinding:
    prefix: -i
- id: in_format_group_i
  doc: '. Format: <group id> <number of items in the group> <lo-value> <false discovery
    rate>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_rra_only_smaller
  doc: . RRA only consider the items with percentile smaller than this parameter.
    Default=0.1
  type: double?
  inputBinding:
    prefix: -p
- id: in_rra_only_greater
  doc: . RRA only consider the items with percentile greater than this parameter.
    Default=-1.0
  type: double?
  inputBinding:
    prefix: -P
- id: in_control
  doc: . A list of control sgRNA names.
  type: string?
  inputBinding:
    prefix: --control
- id: in_permutation
  doc: . The number of rounds of permutation. Increase this value if the number of
    genes is small. Default 100.
  type: long?
  inputBinding:
    prefix: --permutation
- id: in_no_permutation_by_group_dot
  doc: default, gene permutation is performed separately, by their number of sgRNAs.
    Turning this option will perform permutation on all genes together. This makes
    the program faster, but the p value estimation is accurate only if the number
    of sgRNAs per gene is approximately the same.
  type: long?
  inputBinding:
    prefix: --no-permutation-by-group.
- id: in_skip_gene
  doc: . Genes to skip from doing permutation. Specify it multiple times if you need
    to skip more than 1 genes.
  type: long?
  inputBinding:
    prefix: --skip-gene
- id: in_min_percentage_goods_grn_a
  doc: . Filter genes that have too few percentage of 'good sgrnas', or sgrnas that
    fall below the -p threshold. Must be a number between 0-1. Default 0 (do not filter
    genes).
  type: long?
  inputBinding:
    prefix: --min-percentage-goodsgrna
- id: in_min_number_goods_grn_a
  doc: . Filter genes that have too few number of 'good sgrnas', or sgrnas that fall
    below the -p threshold. Must be an integer. Default 0 (do not filter genes).
  type: long?
  inputBinding:
    prefix: --min-number-goodsgrna
- id: in_max_sg_rna_per_gene_permutation
  doc: . Only permute genes by group if the number of sgRNAs per gene is smaller than
    this number. This will save a lot of time if some regions are targeted by a large
    number of sgRNAs (usually hundreds). Must be an integer. Default 100.
  type: long?
  inputBinding:
    prefix: --max-sgrnapergene-permutation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format_group_i
  doc: '. Format: <group id> <number of items in the group> <lo-value> <false discovery
    rate>'
  type: File?
  outputBinding:
    glob: $(inputs.in_format_group_i)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mageck:0.5.9.4--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- RRA
