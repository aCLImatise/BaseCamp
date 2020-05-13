class: CommandLineTool
id: dx_cwl_run_workflow.cwl
inputs:
- id: workflow
  doc: Pointer to workflow/applet file or ID on the platform
  type: string
  inputBinding:
    position: 0
- id: inputs
  doc: Pointer to CWL input file on (JSON or YAML) the platform. All files referenced
    within this file should exist within the project on the platform. Relative paths
    are supported.
  type: string
  inputBinding:
    position: 1
- id: token
  doc: DNAnexus authentication token
  type: string
  inputBinding:
    prefix: --token
- id: project
  doc: DNAnexus project ID
  type: string
  inputBinding:
    prefix: --project
- id: rootdir
  doc: Root directory to place CWL workflow, tools, and resources
  type: string
  inputBinding:
    prefix: --rootdir
- id: wait
  doc: Pointer to CWL input file on (JSON or YAML) the platform. All files referenced
    within this file should exist within the project on the platform. Relative paths
    are supported.
  type: boolean
  inputBinding:
    prefix: --wait
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-cwl
- run-workflow
