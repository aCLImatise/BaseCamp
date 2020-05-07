class: CommandLineTool
id: tripaille_organism_sync.cwl
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
- organism
- sync
