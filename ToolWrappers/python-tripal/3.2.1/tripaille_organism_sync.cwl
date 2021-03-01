class: CommandLineTool
id: tripaille_organism_sync.cwl
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
- organism
- sync
