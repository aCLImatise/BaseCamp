class: CommandLineTool
id: tadbit_clean.cwl
inputs:
- id: in_change_workdir
  doc: In case folder was moved, input the new path
  type: File?
  inputBinding:
    prefix: --change_workdir
- id: in_workdir
  doc: path to working directory (generated with the tool tadbit mapper)
  type: File?
  inputBinding:
    prefix: --workdir
- id: in_job_ids
  doc: jobids of the files and entries to be removed
  type: long[]
  inputBinding:
    prefix: --jobids
- id: in_delete
  doc: delete files, otherwise only DB entries.
  type: boolean?
  inputBinding:
    prefix: --delete
- id: in_compress
  doc: compress files and update paths accordingly
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_nox
  doc: no display server (X screen)
  type: boolean?
  inputBinding:
    prefix: --noX
- id: in_tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File?
  inputBinding:
    prefix: --tmpdb
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tadbit
- clean
