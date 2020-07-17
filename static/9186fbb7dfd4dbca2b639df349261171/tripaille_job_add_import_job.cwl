class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tripaille_job_add_import_job.cwl
inputs:
- id: priority
  doc: 'An integer score to prioritize the job  [default: 10]'
  type: long
  inputBinding:
    prefix: --priority
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: importer
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_import_job
