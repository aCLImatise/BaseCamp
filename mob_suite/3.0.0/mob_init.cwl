class: CommandLineTool
id: ../../../mob_init.cwl
inputs:
- id: database_directory
  doc: Directory to download databases to. Defaults to /tmp/tmpck7ho0cl/lib/python3.8/site-
    packages/mob_suite/databases
  type: string
  inputBinding:
    prefix: --database_directory
- id: verbose
  doc: Set the verbosity level. Can by used multiple times
  type: boolean
  inputBinding:
    prefix: --verbose
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_init
