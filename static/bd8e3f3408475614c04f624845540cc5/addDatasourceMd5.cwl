class: CommandLineTool
id: ../../../addDatasourceMd5.cwl
inputs:
- id: ds_dir
  doc: datasource directory.  This should be the genome_build dir inside a datasource
    dir.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- addDatasourceMd5
