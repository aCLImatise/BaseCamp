class: CommandLineTool
id: addDatasourceMd5.cwl
inputs:
- id: in_ds_dir
  doc: datasource directory.  This should be the genome_build dir inside a datasource
    dir.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- addDatasourceMd5
