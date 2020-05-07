class: CommandLineTool
id: tripaille_analysis_sync.cwl
inputs:
- id: analysis
  doc: Analysis name
  type: string
  inputBinding:
    prefix: --analysis
- id: analysis_id
  doc: ID of the analysis to sync
  type: string
  inputBinding:
    prefix: --analysis_id
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
- analysis
- sync
