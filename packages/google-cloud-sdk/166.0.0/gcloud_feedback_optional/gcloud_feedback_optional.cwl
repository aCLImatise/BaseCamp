class: CommandLineTool
id: gcloud_feedback_optional.cwl
inputs:
- id: in_log_file
  doc: Path to the log file from a prior gcloud run.
  type: File
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- feedback
- optional
