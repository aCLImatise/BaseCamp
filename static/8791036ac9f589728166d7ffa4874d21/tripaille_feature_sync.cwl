class: CommandLineTool
id: tripaille_feature_sync.cwl
inputs:
- id: in_organism
  doc: Common name of the organism to sync
  type: string?
  inputBinding:
    prefix: --organism
- id: in_organism_id
  doc: ID of the organism to sync
  type: string?
  inputBinding:
    prefix: --organism_id
- id: in_max_sync
  doc: 'Maximum number of features to sync (default: all)'
  type: long?
  inputBinding:
    prefix: --max_sync
- id: in_types
  doc: "List of types of records to be synced (e.g. gene mRNA,\ndefault: all)"
  type: string?
  inputBinding:
    prefix: --types
- id: in_ids
  doc: "List of names of records to be synced (e.g. gene0001,\ndefault: all)"
  type: long?
  inputBinding:
    prefix: --ids
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
- feature
- sync
