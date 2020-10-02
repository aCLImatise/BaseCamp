class: CommandLineTool
id: cromwell.cwl
inputs:
- id: in_workflow_root
  doc: Workflow root.
  type: string
  inputBinding:
    prefix: --workflow-root
- id: in_inputs
  doc: Workflow inputs file.
  type: File
  inputBinding:
    prefix: --inputs
- id: in_options
  doc: Workflow options file.
  type: File
  inputBinding:
    prefix: --options
- id: in_type
  doc: Workflow type.
  type: string
  inputBinding:
    prefix: --type
- id: in_type_version
  doc: Workflow type version.
  type: string
  inputBinding:
    prefix: --type-version
- id: in_labels
  doc: Workflow labels file.
  type: File
  inputBinding:
    prefix: --labels
- id: in_imports
  doc: A directory or zipfile to search for workflow imports.
  type: Directory
  inputBinding:
    prefix: --imports
- id: in_metadata_output
  doc: An optional directory path to output metadata.
  type: File
  inputBinding:
    prefix: --metadata-output
- id: in_host
  doc: Cromwell server URL.
  type: string
  inputBinding:
    prefix: --host
- id: in_jar
  doc: ''
  type: boolean
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_metadata_output
  doc: An optional directory path to output metadata.
  type: File
  outputBinding:
    glob: $(inputs.in_metadata_output)
cwlVersion: v1.1
baseCommand:
- cromwell
