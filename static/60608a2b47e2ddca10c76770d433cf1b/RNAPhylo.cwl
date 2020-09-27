class: CommandLineTool
id: RNAPhylo.cwl
inputs:
- id: in__phylogeny_tree
  doc: ': The phylogeny tree'
  type: string
  inputBinding:
    prefix: -t
- id: in_phylogenetic_model_single
  doc: ': The phylogenetic model for single bases'
  type: File
  inputBinding:
    prefix: -s
- id: in_phylogenetic_model_paired
  doc: ': The phylogenetic model for paired bases'
  type: File
  inputBinding:
    prefix: -p
- id: in__scfg_file
  doc: ': The SCFG grammar file.'
  type: File
  inputBinding:
    prefix: -g
- id: in_float_lower_bound
  doc: '<float> : The lower bound for paired emission probability to be interesting'
  type: boolean
  inputBinding:
    prefix: --l
- id: in_partition
  doc: ': Use partition function'
  type: boolean
  inputBinding:
    prefix: --partition
- id: in_in_format
  doc: ': The format of input alignment'
  type: string
  inputBinding:
    prefix: --informat
- id: in_degen_is_absent
  doc: ': model degenerate nucleotides as absent'
  type: boolean
  inputBinding:
    prefix: --degen-is-absent
- id: in_fragmentary
  doc: ': model fragmentary (or equivalently truncated) sequences (implies --degen-is-absent)'
  type: boolean
  inputBinding:
    prefix: --fragmentary
- id: in_only_ss_cons
  doc: ': only allow emission of base pairs in SS_cons (to test this aspect of --fragmentary)'
  type: boolean
  inputBinding:
    prefix: --only-ss-cons
- id: in_gap_thresh
  doc: ': gap threshold for removing columns.  --gap-thresh 1 means retain all columns.  Default:
    0.7'
  type: double
  inputBinding:
    prefix: --gap-thresh
- id: in_partition_close_to_fuzzy_limit
  doc: ': "fuzzy" nucleotide positions are those that are on the edge of                                          a
    truncation, or have a suspicious number of degenerate nucleotides (see --suspicious-degen-nucs).                                      When
    a nucleotide is within <int> nucleotides of a fuzzy position, the partition function
    cannot                                        be calculated on it, as if the nucleotide
    were absent.  This flag is meaningless unless --partition is                                          also
    used.  A value of -1 disables this feature.  Default: -1.  Recommend 3 if you
    use it.'
  type: long
  inputBinding:
    prefix: --partition-close-to-fuzzy-limit
- id: in_suspicious_degen_n_ucs
  doc: ': when there are <int> or more consecutive degenerate nucleotides                                         they
    are considered suspicious (see --partition-close-to-fuzzy-limit)                                   Default:
    2.'
  type: long
  inputBinding:
    prefix: --suspicious-degen-nucs
- id: in_ignore_all_gap
  doc: ": don't complain about alignments containing columns with no nucleotides"
  type: boolean
  inputBinding:
    prefix: --ignore-all-gap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAPhylo
