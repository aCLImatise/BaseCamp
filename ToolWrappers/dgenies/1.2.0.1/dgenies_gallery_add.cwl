class: CommandLineTool
id: dgenies_gallery_add.cwl
inputs:
- id: in_id_job
  doc: Id (name) of the job to add to the gallery
  type: string?
  inputBinding:
    prefix: --id-job
- id: in_name
  doc: Name to show in the gallery for the job
  type: string?
  inputBinding:
    prefix: --name
- id: in_query
  doc: Name of the query
  type: string?
  inputBinding:
    prefix: --query
- id: in_target
  doc: Name of the target
  type: string?
  inputBinding:
    prefix: --target
- id: in_pict
  doc: Name of the file that illustrate the job
  type: File?
  inputBinding:
    prefix: --pict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dgenies
- gallery
- add
