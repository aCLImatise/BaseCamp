class: CommandLineTool
id: hailctl_dataproc_submit.cwl
inputs:
- id: in_files
  doc: "Comma-separated list of files to add to the working\ndirectory of the Hail\
    \ application."
  type: Directory
  inputBinding:
    prefix: --files
- id: in_py_files
  doc: "Comma-separated list of files (or directories with\npython files) to add to\
    \ the PYTHONPATH."
  type: string
  inputBinding:
    prefix: --pyfiles
- id: in_properties
  doc: Extra Spark properties to set.
  type: string
  inputBinding:
    prefix: --properties
- id: in_g_cloud_configuration
  doc: "Google Cloud configuration to submit job (defaults to\ncurrently set configuration)."
  type: string
  inputBinding:
    prefix: --gcloud_configuration
- id: in_dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_name
  doc: Cluster name.
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: Path to script.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- submit
