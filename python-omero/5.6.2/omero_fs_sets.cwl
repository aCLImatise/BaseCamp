class: CommandLineTool
id: omero_fs_sets.cwl
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
- id: without_images
  doc: list only sets without images (i.e. corrupt)
  type: boolean
  inputBinding:
    prefix: --without-images
- id: with_transfer
  doc: list sets by their in-place import method
  type: string[]
  inputBinding:
    prefix: --with-transfer
- id: check
  doc: verify the file checksums for each fileset (admins only)
  type: boolean
  inputBinding:
    prefix: --check
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
- sets
