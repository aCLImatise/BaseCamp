class: CommandLineTool
id: varlookup.cwl
inputs:
- id: distance
  doc: max separation distance (bp) of adjacent loci between bedpe files [50]
  type: long
  inputBinding:
    prefix: --distance
- id: a_file
  doc: 'Pruned merged bedpe (A file) or standard input (-a stdin). '
  type: File
  inputBinding:
    prefix: --aFile
- id: b_file
  doc: Pruned merged bedpe (B file) (-b stdin). For prunning use -- ClusterBedpe.py
  type: File
  inputBinding:
    prefix: --bFile
- id: cohort
  doc: Cohort name to add information of matching variants (default:bFile)
  type: string
  inputBinding:
    prefix: --cohort
- id: output
  doc: 'Output BEDPE to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- varlookup
