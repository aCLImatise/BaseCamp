class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cromwell.cwl
inputs:
- id: workflow_root
  doc: Workflow root.
  type: string
  inputBinding:
    prefix: --workflow-root
- id: inputs
  doc: Workflow inputs file.
  type: string
  inputBinding:
    prefix: --inputs
- id: options
  doc: Workflow options file.
  type: string
  inputBinding:
    prefix: --options
- id: type
  doc: Workflow type.
  type: string
  inputBinding:
    prefix: --type
- id: type_version
  doc: Workflow type version.
  type: string
  inputBinding:
    prefix: --type-version
- id: labels
  doc: Workflow labels file.
  type: string
  inputBinding:
    prefix: --labels
- id: imports
  doc: A directory or zipfile to search for workflow imports.
  type: string
  inputBinding:
    prefix: --imports
- id: metadata_output
  doc: An optional directory path to output metadata.
  type: string
  inputBinding:
    prefix: --metadata-output
- id: host
  doc: Cromwell server URL.
  type: string
  inputBinding:
    prefix: --host
- id: jar
  doc: ''
  type: boolean
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cromwell
