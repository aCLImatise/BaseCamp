class: CommandLineTool
id: tadbit_clean.cwl
inputs:
- id: change_workdir
  doc: In case folder was moved, input the new path
  type: File
  inputBinding:
    prefix: --change_workdir
- id: workdir
  doc: path to working directory (generated with the tool tadbit mapper)
  type: File
  inputBinding:
    prefix: --workdir
- id: job_ids
  doc: jobids of the files and entries to be removed
  type: long[]
  inputBinding:
    prefix: --jobids
- id: delete
  doc: delete files, otherwise only DB entries.
  type: boolean
  inputBinding:
    prefix: --delete
- id: compress
  doc: compress files and update paths accordingly
  type: boolean
  inputBinding:
    prefix: --compress
- id: nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
outputs: []
cwlVersion: v1.1
baseCommand:
- tadbit
- clean
