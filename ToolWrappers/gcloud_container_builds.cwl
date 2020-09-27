class: CommandLineTool
id: gcloud_container_builds.cwl
inputs:
- id: in_cancel
  doc: Cancel an ongoing build.
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Get information about a particular build.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List builds.
  type: string
  inputBinding:
    position: 2
- id: in_log
  doc: Stream the logs for a build.
  type: string
  inputBinding:
    position: 3
- id: in_submit
  doc: Submit a build using the Google Container Builder service.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- container
- builds
