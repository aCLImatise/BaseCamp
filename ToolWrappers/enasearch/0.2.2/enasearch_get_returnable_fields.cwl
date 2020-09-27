class: CommandLineTool
id: enasearch_get_returnable_fields.cwl
inputs:
- id: in_result
  doc: Id of a result (accessible with get_results)  [required]
  type: string
  inputBinding:
    prefix: --result
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- enasearch
- get_returnable_fields
