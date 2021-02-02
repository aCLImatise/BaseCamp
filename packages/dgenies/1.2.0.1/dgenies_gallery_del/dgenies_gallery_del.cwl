class: CommandLineTool
id: dgenies_gallery_del.cwl
inputs:
- id: in_id_job
  doc: Id (name) of the job to delete from the gallery
  type: string
  inputBinding:
    prefix: --id-job
- id: in_name
  doc: Name of the job shown in the gallery
  type: string
  inputBinding:
    prefix: --name
- id: in_remove_pict
  doc: Remove picture file
  type: boolean
  inputBinding:
    prefix: --remove-pict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dgenies
- gallery
- del
