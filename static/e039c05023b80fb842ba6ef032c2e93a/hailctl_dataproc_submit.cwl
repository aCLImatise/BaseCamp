class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dataproc_submit.cwl
inputs:
- id: files
  doc: Comma-separated list of files to add to the working directory of the Hail application.
  type: File
  inputBinding:
    prefix: --files
- id: py_files
  doc: Comma-separated list of files (or directories with python files) to add to
    the PYTHONPATH.
  type: string
  inputBinding:
    prefix: --pyfiles
- id: properties
  doc: Extra Spark properties to set.
  type: string
  inputBinding:
    prefix: --properties
- id: g_cloud_configuration
  doc: Google Cloud configuration to submit job (defaults to currently set configuration).
  type: string
  inputBinding:
    prefix: --gcloud_configuration
- id: dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: name
  doc: Cluster name.
  type: string
  inputBinding:
    position: 0
- id: script
  doc: Path to script.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- submit
