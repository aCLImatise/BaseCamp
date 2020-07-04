class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/findcsRNATSS.pl_tag directory.cwl
inputs:
- id: stable_threshold
  doc: '<#> (minimum RNAseq read density for stable transcript, def: 2)'
  type: boolean
  inputBinding:
    prefix: -stableThreshold
- id: bi_threshold
  doc: '<#> (minimum divergent csRNAseq signal for bi/divergent TSS, def: 2)'
  type: boolean
  inputBinding:
    prefix: -biThreshold
- id: dist
  doc: "<#> (minimum distance from annotated TSS to assign 'distal' annotation, def:\
    \ 500)"
  type: boolean
  inputBinding:
    prefix: -dist
outputs: []
cwlVersion: v1.1
baseCommand:
- findcsRNATSS.pl
- tag directory
