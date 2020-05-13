class: CommandLineTool
id: dgenies_gallery_del.cwl
inputs:
- id: id_job
  doc: Id (name) of the job to delete from the gallery
  type: string
  inputBinding:
    prefix: --id-job
- id: name
  doc: Name of the job shown in the gallery
  type: string
  inputBinding:
    prefix: --name
- id: remove_pict
  doc: Remove picture file
  type: boolean
  inputBinding:
    prefix: --remove-pict
outputs: []
cwlVersion: v1.1
baseCommand:
- dgenies
- gallery
- del
