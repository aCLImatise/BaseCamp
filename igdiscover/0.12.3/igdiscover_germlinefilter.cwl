class: CommandLineTool
id: igdiscover_germlinefilter.cwl
inputs:
- id: cluster_size
  doc: 'Consensus must represent at least N sequences. Default: 0'
  type: string
  inputBinding:
    prefix: --cluster-size
- id: cross_mapping_ratio
  doc: 'Ratio for detection of cross-mapping artifacts. Default: 0.02'
  type: string
  inputBinding:
    prefix: --cross-mapping-ratio
- id: clo_no_type_ratio
  doc: 'Required ratio of "clonotypes" counts between alleles. Works only for genes
    named "NAME*ALLELE". Default: 0.1'
  type: string
  inputBinding:
    prefix: --clonotype-ratio
- id: exact_ratio
  doc: 'Required ratio of "exact" counts between alleles. Works only for genes named
    "NAME*ALLELE". Default: 0.1'
  type: string
  inputBinding:
    prefix: --exact-ratio
- id: cdr3_shared_ratio
  doc: 'Maximum allowed CDR3_shared_ratio. Default: 1.0'
  type: string
  inputBinding:
    prefix: --cdr3-shared-ratio
- id: minimum_db_diff
  doc: 'Sequences must have at least N differences to the database sequence. Default:
    0'
  type: string
  inputBinding:
    prefix: --minimum-db-diff
- id: maximum_n
  doc: 'Sequences must have at most COUNT "N" bases. Default: 0'
  type: string
  inputBinding:
    prefix: --maximum-N
- id: unique_cdr3s
  doc: 'Sequences must have at least N unique CDR3s within exact sequence matches.
    Default: 1'
  type: string
  inputBinding:
    prefix: --unique-cdr3s
- id: unique_j
  doc: 'Sequences must have at least N unique Js within exact sequence matches. Default:
    0'
  type: string
  inputBinding:
    prefix: --unique-J
- id: unique_d_ratio
  doc: Discard a sequence if another allele of this gene exists such that the ratio
    between their Ds_exact is less than RATIO
  type: string
  inputBinding:
    prefix: --unique-D-ratio
- id: unique_d_threshold
  doc: Apply the --unique-D-ratio filter only if the Ds_exact of the other allele
    is at least THRESHOLD
  type: string
  inputBinding:
    prefix: --unique-D-threshold
- id: allow_stop
  doc: 'Allow stop codons in sequences (uses the has_stop column).Default: Do not
    allow stop codons.'
  type: boolean
  inputBinding:
    prefix: --allow-stop
- id: whitelist
  doc: Sequences that are never discarded or merged with others, even if criteria
    for discarding them would apply (except cross-mapping artifact removal, which
    is always performed).
  type: string
  inputBinding:
    prefix: --whitelist
- id: fast_a
  doc: Write new database in FASTA format to FILE
  type: File
  inputBinding:
    prefix: --fasta
- id: annotate
  doc: Write candidates.tab with filter annotations to FILE
  type: File
  inputBinding:
    prefix: --annotate
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- germlinefilter
