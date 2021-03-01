class: CommandLineTool
id: getDifferentialPeaks.cwl
inputs:
- id: in_fold_enrichment_background
  doc: '<#> (fold enrichment over background tag count, default: 4.0)'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_poisson_enrichment_pvalue
  doc: '<#> (poisson enrichment p-value over background tag count, default: 0.0001)'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_same
  doc: (return similar peaks instead of different peaks)
  type: boolean?
  inputBinding:
    prefix: -same
- id: in_rev
  doc: (return peaks with higher tag counts in background instead of target library)
  type: boolean?
  inputBinding:
    prefix: -rev
- id: in_size
  doc: '<#> (size of region around peak to count tags, default: -fixed)'
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_fixed
  doc: "(Count tags relative to actual peak start and stop, default)\n\"-size given\"\
    \ is the same as \"-fixed\""
  type: boolean?
  inputBinding:
    prefix: -fixed
- id: in_strand
  doc: <both|+|-> (Strand [relative to peak] to count tags from, default:both)
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_tag_adjust
  doc: "<#> (bp to shift tag positions to estimate fragment centers, default: auto)\n\
    '-tagAdjust auto' uses half of the estimated tag fragment length"
  type: boolean?
  inputBinding:
    prefix: -tagAdjust
- id: in_tag_adjust_bg
  doc: "<#> (bp to shift background tag positions to estimate fragment centers, default:\
    \ auto)\n'-tagAdjustBg auto' uses half of the estimated tag fragment length"
  type: boolean?
  inputBinding:
    prefix: -tagAdjustBg
- id: in_tbp
  doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -tbp
- id: in_tbp_bg
  doc: '<#> (Maximum background tags per bp to count, 0 = no limit, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -tbpBg
- id: in_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_target_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
- id: in_background_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getDifferentialPeaks
