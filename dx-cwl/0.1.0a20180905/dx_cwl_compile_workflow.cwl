class: CommandLineTool
id: dx_cwl_compile_workflow.cwl
inputs:
- id: workflow
  doc: CWL workflow definition file
  type: string
  inputBinding:
    position: 0
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
- id: assets
  doc: One or more DNAnexus asset IDs to include in tools.
  type: string[]
  inputBinding:
    prefix: --assets
- id: bundled
  doc: One or more DNAnexus bundledDepends file IDs to include in tool.
  type: string[]
  inputBinding:
    prefix: --bundled
- id: instance_provider
  doc: 'VM instance provider (default: aws)'
  type: string
  inputBinding:
    prefix: --instance-provider
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-cwl
- compile-workflow
