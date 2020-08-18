class: CommandLineTool
id: ../../../HiLine_params.cwl
inputs:
- id: threads
  doc: RANGE  Number of threads to use, must be at least 3. Default=4
  type: long
  inputBinding:
    prefix: --threads
- id: min_mapq
  doc: RANGE  Minimum mapping quality. Default=10
  type: long
  inputBinding:
    prefix: --minmapq
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- params
