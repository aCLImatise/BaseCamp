class: CommandLineTool
id: ../../../HiLine_params.cwl
inputs:
- id: in_threads
  doc: "RANGE  Number of threads to use, must be at least 3.\nDefault=4"
  type: long
  inputBinding:
    prefix: --threads
- id: in_min_mapq
  doc: RANGE  Minimum mapping quality. Default=10
  type: long
  inputBinding:
    prefix: --minmapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HiLine
- params
