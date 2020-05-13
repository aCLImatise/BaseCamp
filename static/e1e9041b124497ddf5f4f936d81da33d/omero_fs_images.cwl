class: CommandLineTool
id: omero_fs_images.cwl
inputs:
- id: style
  doc: use alternative output style (default=sql)
  type: string
  inputBinding:
    prefix: --style
- id: limit
  doc: maximum number of return values (default=25)
  type: string
  inputBinding:
    prefix: --limit
- id: offset
  doc: number of entries to skip (default=0)
  type: string
  inputBinding:
    prefix: --offset
- id: order
  doc: order of the rows returned
  type: string
  inputBinding:
    prefix: --order
- id: archived
  doc: list only images with archived data
  type: boolean
  inputBinding:
    prefix: --archived
- id: extended
  doc: provide more details for each (slow)
  type: boolean
  inputBinding:
    prefix: --extended
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- images
