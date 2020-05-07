class: CommandLineTool
id: getDifferentialPeaks.cwl
inputs:
- id: f
  doc: '<#> (fold enrichment over background tag count, default: 4.0)'
  type: boolean
  inputBinding:
    prefix: -F
- id: p
  doc: '<#> (poisson enrichment p-value over background tag count, default: 0.0001)'
  type: boolean
  inputBinding:
    prefix: -P
- id: same
  doc: (return similar peaks instead of different peaks)
  type: boolean
  inputBinding:
    prefix: -same
- id: rev
  doc: (return peaks with higher tag counts in background instead of target library)
  type: boolean
  inputBinding:
    prefix: -rev
- id: size
  doc: '<#> (size of region around peak to count tags, default: -fixed)'
  type: boolean
  inputBinding:
    prefix: -size
- id: fixed
  doc: (Count tags relative to actual peak start and stop, default) "-size given"
    is the same as "-fixed"
  type: boolean
  inputBinding:
    prefix: -fixed
- id: tbp
  doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: 0)'
  type: boolean
  inputBinding:
    prefix: -tbp
- id: tbp_bg
  doc: '<#> (Maximum background tags per bp to count, 0 = no limit, default: 0)'
  type: boolean
  inputBinding:
    prefix: -tbpBg
outputs: []
cwlVersion: v1.1
baseCommand:
- getDifferentialPeaks
