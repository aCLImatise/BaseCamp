class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mysql_config.cwl
inputs:
- id: pkg_libdir
  doc: '[/tmp/tmp5kms2cfc/lib]'
  type: string
  inputBinding:
    position: 0
- id: plugin_dir
  doc: '[/tmp/tmp5kms2cfc/lib/plugin]'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mysql_config
