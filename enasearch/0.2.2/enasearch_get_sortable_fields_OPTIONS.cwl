class: CommandLineTool
id: enasearch_get_sortable_fields_OPTIONS.cwl
inputs:
- id: result
  doc: Id of a result (accessible with get_results)  [required]
  type: string
  inputBinding:
    prefix: --result
outputs: []
cwlVersion: v1.1
baseCommand:
- enasearch
- get_sortable_fields
- OPTIONS
