class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filterTagDirectory.pl.cwl
inputs:
- id: strand
  doc: (filter reads from the same strand only)
  type: boolean
  inputBinding:
    prefix: -strand
- id: tag_adjust
  doc: "<#> (adjust reads #bp before assigning overlap of 5' position)"
  type: boolean
  inputBinding:
    prefix: -tagAdjust
- id: keep
  doc: '(keep tags in peaks, discard others. def: discard peak tags)'
  type: boolean
  inputBinding:
    prefix: -keep
- id: update
  doc: (process tags, then replace tag directory)
  type: boolean
  inputBinding:
    prefix: -update
outputs: []
cwlVersion: v1.1
baseCommand:
- filterTagDirectory.pl
