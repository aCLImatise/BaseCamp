class: CommandLineTool
id: mysql_config.cwl
inputs:
- id: pkg_libdir
  doc: '[/tmp/tmp74jusc75/lib]'
  type: string
  inputBinding:
    position: 0
- id: plugin_dir
  doc: '[/tmp/tmp74jusc75/lib/plugin]'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mysql_config
