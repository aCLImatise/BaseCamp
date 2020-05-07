class: CommandLineTool
id: tripaille_phylogeny_sync.cwl
inputs:
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
- phylogeny
- sync
