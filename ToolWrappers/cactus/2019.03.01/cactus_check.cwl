class: CommandLineTool
id: cactus_check.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean
  inputBinding:
    prefix: --cactusDisk
- id: in_recursive
  doc: ': Check all flowers recursively'
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_check_normalised
  doc: ': Check cactus is normalised'
  type: boolean
  inputBinding:
    prefix: --checkNormalised
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus_check
