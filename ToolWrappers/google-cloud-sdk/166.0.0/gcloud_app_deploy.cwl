class: CommandLineTool
id: gcloud_app_deploy.cwl
inputs:
- id: in_bucket
  doc: "The Google Cloud Storage bucket used to stage files associated with the\n\
    deployment. If this argument is not specified, the application's\ndefault code\
    \ bucket is used."
  type: string?
  inputBinding:
    prefix: --bucket
- id: in_image_url
  doc: "Deploy with a specific Docker image. Docker url must be from one of the\n\
    valid gcr hostnames."
  type: string?
  inputBinding:
    prefix: --image-url
- id: in_promote
  doc: "Promote the deployed version to receive all traffic.\nTrue by default. To\
    \ change the default behavior for your current\nenvironment, run:\n$ gcloud config\
    \ set app/promote_by_default false"
  type: boolean?
  inputBinding:
    prefix: --promote
- id: in_stop_previous_version
  doc: "Stop the previously running version when deploying a new version that\nreceives\
    \ all traffic. Overrides the default app/stop_previous_version\nproperty value\
    \ for this command invocation. Use\n--no-stop-previous-version to disable."
  type: boolean?
  inputBinding:
    prefix: --stop-previous-version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- app
- deploy
