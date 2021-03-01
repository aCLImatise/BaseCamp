class: CommandLineTool
id: tripaille_analysis_sync.cwl
inputs:
- id: in_analysis
  doc: Analysis name
  type: string?
  inputBinding:
    prefix: --analysis
- id: in_analysis_id
  doc: ID of the analysis to sync
  type: string?
  inputBinding:
    prefix: --analysis_id
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
- analysis
- sync
