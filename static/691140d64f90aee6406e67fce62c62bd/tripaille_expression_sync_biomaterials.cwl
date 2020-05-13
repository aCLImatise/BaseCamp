class: CommandLineTool
id: tripaille_expression_sync_biomaterials.cwl
inputs:
- id: ids
  doc: 'JSON list of ids of biomaterials to be synced (default: all)  [default: []]'
  type: string
  inputBinding:
    prefix: --ids
- id: max_sync
  doc: 'Maximum number of features to sync (default: all)'
  type: string
  inputBinding:
    prefix: --max_sync
- id: job_name
  doc: Name of the job
  type: string
  inputBinding:
    prefix: --job_name
- id: no_wait
  doc: Return immediately without waiting for job completion
  type: boolean
  inputBinding:
    prefix: --no_wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- sync_biomaterials
