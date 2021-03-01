class: CommandLineTool
id: tripaille_analysis_delete_orphans.cwl
inputs:
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
- delete_orphans
