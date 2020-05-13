class: CommandLineTool
id: omero_fs_importtime.cwl
inputs:
- id: cache
  doc: to cache the results by annotating the fileset
  type: boolean
  inputBinding:
    prefix: --cache
- id: summary
  doc: summarize the results cached for filesets
  type: boolean
  inputBinding:
    prefix: --summary
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- importtime
