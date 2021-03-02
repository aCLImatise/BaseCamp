class: CommandLineTool
id: tripaille_expression_sync_biomaterials.cwl
inputs:
- id: in_ids
  doc: "JSON list of ids of biomaterials to be synced (default:\nall)  [default: []]"
  type: string?
  inputBinding:
    prefix: --ids
- id: in_max_sync
  doc: 'Maximum number of features to sync (default: all)'
  type: long?
  inputBinding:
    prefix: --max_sync
- id: in_job_name
  doc: Name of the job
  type: string?
  inputBinding:
    prefix: --job_name
- id: in_no_wait
  doc: Return immediately without waiting for job completion
  type: boolean?
  inputBinding:
    prefix: --no_wait
- id: in_status
  doc: 'Options:'
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
- tripaille
- expression
- sync_biomaterials
