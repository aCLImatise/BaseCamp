class: CommandLineTool
id: tripaille_feature_sync.cwl
inputs:
- id: organism
  doc: Common name of the organism to sync
  type: string
  inputBinding:
    prefix: --organism
- id: organism_id
  doc: ID of the organism to sync
  type: string
  inputBinding:
    prefix: --organism_id
- id: max_sync
  doc: 'Maximum number of features to sync (default: all)'
  type: string
  inputBinding:
    prefix: --max_sync
- id: types
  doc: 'List of types of records to be synced (e.g. gene mRNA, default: all)'
  type: string
  inputBinding:
    prefix: --types
- id: ids
  doc: 'List of names of records to be synced (e.g. gene0001, default: all)'
  type: string
  inputBinding:
    prefix: --ids
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
- feature
- sync
