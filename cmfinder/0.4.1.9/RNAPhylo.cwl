#!/usr/bin/env cwl-runner

baseCommand:
- RNAPhylo
class: CommandLineTool
cwlVersion: v1.0
id: rnaphylo
inputs:
- doc: ': The phylogeny tree '
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': The phylogenetic model for single bases '
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ': The phylogenetic model for paired bases '
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ': The SCFG grammar file. '
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: '<float> : The lower bound for paired emission probability to be interesting '
  id: l
  inputBinding:
    prefix: --l
  type: boolean
- doc: ': Use partition function '
  id: partition
  inputBinding:
    prefix: --partition
  type: boolean
- doc: ': The format of input alignment '
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': model degenerate nucleotides as absent'
  id: degen_is_absent
  inputBinding:
    prefix: --degen-is-absent
  type: boolean
- doc: ': model fragmentary (or equivalently truncated) sequences (implies --degen-is-absent)'
  id: fragmentary
  inputBinding:
    prefix: --fragmentary
  type: boolean
- doc: ': only allow emission of base pairs in SS_cons (to test this aspect of --fragmentary)'
  id: only_ss_cons
  inputBinding:
    prefix: --only-ss-cons
  type: boolean
- doc: ': gap threshold for removing columns.  --gap-thresh 1 means retain all columns.  Default:
    0.7'
  id: gap_thresh
  inputBinding:
    prefix: --gap-thresh
  type: string
- doc: ': "fuzzy" nucleotide positions are those that are on the edge of                                          a
    truncation, or have a suspicious number of degenerate nucleotides (see --suspicious-degen-nucs).                                      When
    a nucleotide is within <int> nucleotides of a fuzzy position, the partition function
    cannot                                        be calculated on it, as if the nucleotide
    were absent.  This flag is meaningless unless --partition is                                          also
    used.  A value of -1 disables this feature.  Default: -1.  Recommend 3 if you
    use it.'
  id: partition_close_to_fuzzy_limit
  inputBinding:
    prefix: --partition-close-to-fuzzy-limit
  type: long
- doc: ': when there are <int> or more consecutive degenerate nucleotides                                         they
    are considered suspicious (see --partition-close-to-fuzzy-limit)                                   Default:
    2.'
  id: suspicious_degen_n_ucs
  inputBinding:
    prefix: --suspicious-degen-nucs
  type: long
- doc: ": don't complain about alignments containing columns with no nucleotides"
  id: ignore_all_gap
  inputBinding:
    prefix: --ignore-all-gap
  type: boolean
