class: CommandLineTool
id: filterTagDirectory.pl.cwl
inputs:
- id: in_strand
  doc: (filter reads from the same strand only)
  type: boolean
  inputBinding:
    prefix: -strand
- id: in_tag_adjust
  doc: "<#> (adjust reads #bp before assigning overlap of 5' position)"
  type: boolean
  inputBinding:
    prefix: -tagAdjust
- id: in_keep
  doc: '(keep tags in peaks, discard others. def: discard peak tags)'
  type: boolean
  inputBinding:
    prefix: -keep
- id: in_update
  doc: (process tags, then replace tag directory)
  type: boolean
  inputBinding:
    prefix: -update
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filterTagDirectory.pl
