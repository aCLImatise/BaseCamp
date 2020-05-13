class: CommandLineTool
id: makeprotseq.cwl
inputs:
- id: pep_stats_file
  doc: infile     This file should be a pepstats output file. Protein sequences will
    be created with the composition in the pepstats output file.
  type: boolean
  inputBinding:
    prefix: -pepstatsfile
- id: amount
  doc: integer    [100] Number of sequences created (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -amount
- id: length
  doc: integer    [100] Length of each sequence (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -length
outputs: []
cwlVersion: v1.1
baseCommand:
- makeprotseq
