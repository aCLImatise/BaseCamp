class: CommandLineTool
id: dx_cwl_compile_tool.cwl
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
- id: in_bundled
  doc: "One or more DNAnexus bundledDepends file IDs to\ninclude in tool."
  type: string[]
  inputBinding:
    prefix: --bundled
- id: in_extra_disk
  doc: "Additional disk space required for instance in\nmebibytes (2**20)"
  type: long?
  inputBinding:
    prefix: --extradisk
- id: in_instance_provider
  doc: "VM instance provider (default: aws)\n"
  type: string?
  inputBinding:
    prefix: --instance-provider
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-cwl
- compile-tool
