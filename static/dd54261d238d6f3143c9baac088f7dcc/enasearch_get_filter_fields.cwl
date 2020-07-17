class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/enasearch_get_filter_fields.cwl
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
- get_filter_fields
