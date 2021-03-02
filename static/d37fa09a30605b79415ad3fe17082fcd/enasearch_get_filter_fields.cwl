class: CommandLineTool
id: enasearch_get_filter_fields.cwl
inputs:
- id: in_result
  doc: Id of a result (accessible with get_results)  [required]
  type: string?
  inputBinding:
    prefix: --result
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- enasearch
- get_filter_fields
