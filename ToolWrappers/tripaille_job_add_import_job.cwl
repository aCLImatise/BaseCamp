class: CommandLineTool
id: tripaille_job_add_import_job.cwl
inputs:
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_importer
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_import_job
