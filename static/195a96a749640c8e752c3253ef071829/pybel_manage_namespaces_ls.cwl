class: CommandLineTool
id: pybel_manage_namespaces_ls.cwl
inputs:
- id: url
  doc: Specific resource URL to list
  type: string
  inputBinding:
    prefix: --url
- id: namespace_id
  doc: Specific resource URL to list
  type: long
  inputBinding:
    prefix: --namespace-id
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- namespaces
- ls
