class: CommandLineTool
id: match_rg_patterns_to_library.pl.cwl
inputs:
- id: in_acf
  doc: Aberrant cell fraction [1.0]
  type: double
  inputBinding:
    prefix: -acf
- id: in_ploidy
  doc: Tumour ploidy [2.0]
  type: double
  inputBinding:
    prefix: -ploidy
- id: in_verbose
  doc: Print debugging messages
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_max_balanced_rg_dist
  doc: "Maximum distance at which reciprocal\nrearrangements can still be considered\
    \ balanced\n[1000]"
  type: long
  inputBinding:
    prefix: -max_balanced_rg_dist
- id: in_max_foldback_distance
  doc: "Maximum distance for fold-back type\nrearrangements to be considered as purely\n\
    fold-back [5000]."
  type: long
  inputBinding:
    prefix: -max_foldback_distance
- id: in_min_seg_size_for_cn
  doc: "Minimum segment size from which CNs estimates\nare trusted and used for filtering\
    \ out false\npositive rearrangements [10000]"
  type: long
  inputBinding:
    prefix: -min_seg_size_for_cn
- id: in_min_cn_change
  doc: "The minimum amount the copy number change\nacross a putative rearrangement\
    \ call for the\nrearrangement to be not filtered out (whenever\nthe copy number\
    \ change across breakpoint can be\ncomputed) [0.5]"
  type: double
  inputBinding:
    prefix: -min_cn_change
- id: in_keep_small_dels_and_tds
  doc: "Keep TDs and deletions that are smaller than\nmin_seg_size_for_cn? [TRUE]"
  type: boolean
  inputBinding:
    prefix: -keep_small_dels_and_tds
- id: in_max_depth
  doc: Maximum length of 'rearrangement paths' [3]
  type: long
  inputBinding:
    prefix: -max_depth
- id: in_cn_segments_dot_bed
  doc: REARRANGEMENTS.BEDPE is a BEDPE file with rearrangement ID in column 7
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- match_rg_patterns_to_library.pl
