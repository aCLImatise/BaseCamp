class: CommandLineTool
id: igdiscover_germlinefilter.cwl
inputs:
- id: in_cluster_size
  doc: "Consensus must represent at least N sequences.\nDefault: 0"
  type: long
  inputBinding:
    prefix: --cluster-size
- id: in_cross_mapping_ratio
  doc: "Ratio for detection of cross-mapping artifacts.\nDefault: 0.02"
  type: double
  inputBinding:
    prefix: --cross-mapping-ratio
- id: in_clo_no_type_ratio
  doc: "Required ratio of \"clonotypes\" counts between alleles.\nWorks only for genes\
    \ named \"NAME*ALLELE\". Default: 0.1"
  type: double
  inputBinding:
    prefix: --clonotype-ratio
- id: in_exact_ratio
  doc: "Required ratio of \"exact\" counts between alleles.\nWorks only for genes\
    \ named \"NAME*ALLELE\". Default: 0.1"
  type: double
  inputBinding:
    prefix: --exact-ratio
- id: in_cdr_three_shared_ratio
  doc: 'Maximum allowed CDR3_shared_ratio. Default: 1.0'
  type: long
  inputBinding:
    prefix: --cdr3-shared-ratio
- id: in_minimum_db_diff
  doc: "Sequences must have at least N differences to the\ndatabase sequence. Default:\
    \ 0"
  type: long
  inputBinding:
    prefix: --minimum-db-diff
- id: in_maximum_n
  doc: "Sequences must have at most COUNT \"N\" bases. Default:\n0"
  type: long
  inputBinding:
    prefix: --maximum-N
- id: in_unique_cdr_threes
  doc: "Sequences must have at least N unique CDR3s within\nexact sequence matches.\
    \ Default: 1"
  type: long
  inputBinding:
    prefix: --unique-cdr3s
- id: in_unique_j
  doc: "Sequences must have at least N unique Js within exact\nsequence matches. Default:\
    \ 0"
  type: long
  inputBinding:
    prefix: --unique-J
- id: in_unique_d_ratio
  doc: "Discard a sequence if another allele of this gene\nexists such that the ratio\
    \ between their Ds_exact is\nless than RATIO"
  type: string
  inputBinding:
    prefix: --unique-D-ratio
- id: in_unique_d_threshold
  doc: "Apply the --unique-D-ratio filter only if the Ds_exact\nof the other allele\
    \ is at least THRESHOLD"
  type: string
  inputBinding:
    prefix: --unique-D-threshold
- id: in_allow_stop
  doc: "Allow stop codons in sequences (uses the has_stop\ncolumn).Default: Do not\
    \ allow stop codons."
  type: boolean
  inputBinding:
    prefix: --allow-stop
- id: in_whitelist
  doc: "Sequences that are never discarded or merged with\nothers, even if criteria\
    \ for discarding them would\napply (except cross-mapping artifact removal, which\
    \ is\nalways performed)."
  type: string
  inputBinding:
    prefix: --whitelist
- id: in_fast_a
  doc: Write new database in FASTA format to FILE
  type: File
  inputBinding:
    prefix: --fasta
- id: in_annotate
  doc: Write candidates.tab with filter annotations to FILE
  type: File
  inputBinding:
    prefix: --annotate
- id: in_candidates_dot_tab
  doc: Tables (one or more) created by the "discover" command
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- germlinefilter
