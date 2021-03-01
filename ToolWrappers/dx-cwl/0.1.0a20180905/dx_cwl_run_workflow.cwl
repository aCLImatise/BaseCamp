class: CommandLineTool
id: dx_cwl_run_workflow.cwl
inputs:
- id: in_token
  doc: DNAnexus authentication token
  type: string?
  inputBinding:
    prefix: --token
- id: in_project
  doc: DNAnexus project ID
  type: string?
  inputBinding:
    prefix: --project
- id: in_rootdir
  doc: Root directory to place CWL workflow, tools, and
  type: Directory?
  inputBinding:
    prefix: --rootdir
- id: in_workflow
  doc: Pointer to workflow/applet file or ID on the platform
  type: string
  inputBinding:
    position: 0
- id: in_inputs
  doc: "Pointer to CWL input file on (JSON or YAML) the platform.\nAll files referenced\
    \ within this file should exist within\nthe project on the platform. Relative\
    \ paths are\nsupported."
  type: string
  inputBinding:
    position: 1
- id: in_resources
  doc: --wait             Pointer to CWL input file on (JSON or YAML) the platform.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-cwl
- run-workflow
