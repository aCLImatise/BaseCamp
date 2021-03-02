class: CommandLineTool
id: cactus_fillAdjacencies.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean?
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean?
  inputBinding:
    prefix: --cactusDisk
- id: in_tempdir_root
  doc: ': The temp file root directory'
  type: boolean?
  inputBinding:
    prefix: --tempDirRoot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_fillAdjacencies
