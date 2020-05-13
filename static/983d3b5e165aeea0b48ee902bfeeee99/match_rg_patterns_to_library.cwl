class: CommandLineTool
id: match_rg_patterns_to_library.pl.cwl
inputs:
- id: rearrangements_bed_pe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: acf
  doc: Aberrant cell fraction [1.0]
  type: double
  inputBinding:
    prefix: -acf
- id: ploidy
  doc: Tumour ploidy [2.0]
  type: double
  inputBinding:
    prefix: -ploidy
- id: verbose
  doc: Print debugging messages
  type: boolean
  inputBinding:
    prefix: -verbose
- id: max_balanced_rg_dist
  doc: Maximum distance at which reciprocal rearrangements can still be considered
    balanced [1000]
  type: long
  inputBinding:
    prefix: -max_balanced_rg_dist
- id: max_foldback_distance
  doc: Maximum distance for fold-back type rearrangements to be considered as purely
    fold-back [5000].
  type: long
  inputBinding:
    prefix: -max_foldback_distance
- id: min_seg_size_for_cn
  doc: Minimum segment size from which CNs estimates are trusted and used for filtering
    out false positive rearrangements [10000]
  type: long
  inputBinding:
    prefix: -min_seg_size_for_cn
- id: min_cn_change
  doc: The minimum amount the copy number change across a putative rearrangement call
    for the rearrangement to be not filtered out (whenever the copy number change
    across breakpoint can be computed) [0.5]
  type: double
  inputBinding:
    prefix: -min_cn_change
- id: keep_small_dels_and_tds
  doc: Keep TDs and deletions that are smaller than min_seg_size_for_cn? [TRUE]
  type: boolean
  inputBinding:
    prefix: -keep_small_dels_and_tds
- id: max_depth
  doc: Maximum length of 'rearrangement paths' [3]
  type: long
  inputBinding:
    prefix: -max_depth
outputs: []
cwlVersion: v1.1
baseCommand:
- match_rg_patterns_to_library.pl
