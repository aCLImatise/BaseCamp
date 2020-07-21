class: CommandLineTool
id: ../../../svtools_varlookup.cwl
inputs:
- id: distance
  doc: max separation distance (bp) of adjacent loci between bedpe files [50]
  type: long
  inputBinding:
    prefix: --distance
- id: a_file
  doc: pruned, merged BEDPE (A file) or standard input (-a stdin).
  type: string
  inputBinding:
    prefix: --aFile
- id: b_file
  doc: pruned merged BEDPE (B file) (-b stdin). For pruning use svtools prune
  type: string
  inputBinding:
    prefix: --bFile
- id: cohort
  doc: cohort name to add information of matching variants (default:bFile)
  type: string
  inputBinding:
    prefix: --cohort
- id: output
  doc: 'output BEDPE to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- varlookup
