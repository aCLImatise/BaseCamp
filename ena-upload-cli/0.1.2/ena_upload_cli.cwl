class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ena_upload_cli.cwl
inputs:
- id: action
  doc: 'add: add an object to the archive modify: modify an object in the archive
    cancel: cancel a private object and its dependent objects release: release a private
    object immediately to public'
  type: string
  inputBinding:
    prefix: --action
- id: study
  doc: table of STUDY object
  type: string
  inputBinding:
    prefix: --study
- id: sample
  doc: table of SAMPLE object
  type: string
  inputBinding:
    prefix: --sample
- id: experiment
  doc: table of EXPERIMENT object
  type: string
  inputBinding:
    prefix: --experiment
- id: run
  doc: table of RUN object
  type: string
  inputBinding:
    prefix: --run
- id: data
  doc: '[FILE [FILE ...]] data for submission'
  type: boolean
  inputBinding:
    prefix: --data
- id: center
  doc: specific to your Webin account
  type: string
  inputBinding:
    prefix: --center
- id: web_in_id
  doc: the usermane of your Webin account
  type: string
  inputBinding:
    prefix: --webin_id
- id: password
  doc: the password of your Webin account
  type: string
  inputBinding:
    prefix: --password
- id: en_a_upload
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ena-upload-cli
