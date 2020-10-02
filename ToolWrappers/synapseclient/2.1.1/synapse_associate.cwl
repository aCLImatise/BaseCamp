class: CommandLineTool
id: synapse_associate.cwl
inputs:
- id: in_limit_search
  doc: "Synapse ID of a container such as project or folder to\nlimit search to."
  type: Directory
  inputBinding:
    prefix: --limitSearch
- id: in_perform_recursive_association
  doc: "Perform recursive association with all local files in\na folder\n"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_path
  doc: local file path
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- associate
