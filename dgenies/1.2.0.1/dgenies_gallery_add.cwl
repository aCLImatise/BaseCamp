class: CommandLineTool
id: dgenies_gallery_add.cwl
inputs:
- id: id_job
  doc: Id (name) of the job to add to the gallery
  type: string
  inputBinding:
    prefix: --id-job
- id: name
  doc: Name to show in the gallery for the job
  type: string
  inputBinding:
    prefix: --name
- id: query
  doc: Name of the query
  type: string
  inputBinding:
    prefix: --query
- id: target
  doc: Name of the target
  type: string
  inputBinding:
    prefix: --target
- id: pict
  doc: Name of the file that illustrate the job
  type: string
  inputBinding:
    prefix: --pict
outputs: []
cwlVersion: v1.1
baseCommand:
- dgenies
- gallery
- add
