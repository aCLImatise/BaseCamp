class: CommandLineTool
id: update_config.py.cwl
inputs:
- id: write_changes
  doc: If specified than the updates/changes will be written to '/tmp/tmpg5gctayr/etc/configuration.cfg'.
  type: boolean
  inputBinding:
    prefix: --write-changes
outputs: []
cwlVersion: v1.1
baseCommand:
- update-config.py
