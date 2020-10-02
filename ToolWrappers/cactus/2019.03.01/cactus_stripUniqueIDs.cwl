class: CommandLineTool
id: cactus_stripUniqueIDs.cwl
inputs:
- id: in_cactus_disk
  doc: must be provided
  type: string
  inputBinding:
    prefix: --cactusDisk
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus_stripUniqueIDs
