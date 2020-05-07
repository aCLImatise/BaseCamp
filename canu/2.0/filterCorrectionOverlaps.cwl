class: CommandLineTool
id: filterCorrectionOverlaps.cwl
inputs:
- id: no_log
  doc: don't create 'scoreFile.log'
  type: boolean
  inputBinding:
    prefix: -nolog
- id: no_stats
  doc: don't create 'scoreFile.stats'
  type: boolean
  inputBinding:
    prefix: -nostats
outputs: []
cwlVersion: v1.1
baseCommand:
- filterCorrectionOverlaps
