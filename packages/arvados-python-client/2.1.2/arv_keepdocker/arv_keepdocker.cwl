class: CommandLineTool
id: arv_keepdocker.cwl
inputs:
- id: in_force
  doc: Re-upload the image even if it already exists on the
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_pull
  doc: Try to pull the latest image from Docker registry
  type: boolean?
  inputBinding:
    prefix: --pull
- id: in_no_pull
  doc: "Use locally installed image only, don't pull image\nfrom Docker registry (default)"
  type: boolean?
  inputBinding:
    prefix: --no-pull
- id: in_project_uuid
  doc: "Store the collection in the specified project, instead\nof your Home project."
  type: string?
  inputBinding:
    prefix: --project-uuid
- id: in_name
  doc: Save the collection with the specified name.
  type: string?
  inputBinding:
    prefix: --name
- id: in_progress
  doc: "Display human-readable progress on stderr (bytes and,\nif possible, percentage\
    \ of total data size). This is\nthe default behavior when stderr is a tty."
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_no_progress
  doc: "Do not display human-readable progress on stderr, even\nif stderr is a tty."
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_batch_progress
  doc: "Display machine-readable progress on stderr (bytes\nand, if known, total data\
    \ size)."
  type: boolean?
  inputBinding:
    prefix: --batch-progress
- id: in_silent
  doc: "Do not print any debug messages to console. (Any error\nmessages will still\
    \ be displayed.)"
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_resume
  doc: "Continue interrupted uploads from cached state\n(default)."
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_no_resume
  doc: Do not continue interrupted uploads from cached state.
  type: boolean?
  inputBinding:
    prefix: --no-resume
- id: in_cache
  doc: "Save upload state in a cache file for resuming\n(default)."
  type: boolean?
  inputBinding:
    prefix: --cache
- id: in_no_cache
  doc: Do not save upload state in a cache file for resuming.
  type: boolean?
  inputBinding:
    prefix: --no-cache
- id: in_retries
  doc: "Maximum number of times to retry server requests that\nencounter temporary\
    \ failures (e.g., server down).\nDefault 3.\n"
  type: long?
  inputBinding:
    prefix: --retries
- id: in_force_image_format
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --force-image-format
- id: in_image
  doc: 'Docker image to upload: repo, repo:tag, or hash'
  type: string
  inputBinding:
    position: 0
- id: in_tag
  doc: "Tag of the Docker image to upload (default 'latest'),\nif image is given as\
    \ an untagged repo name"
  type: string
  inputBinding:
    position: 1
- id: in_server
  doc: --force-image-format  Proceed even if the image format is not supported by
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arvados-python-client:2.1.2--py_0
cwlVersion: v1.1
baseCommand:
- arv-keepdocker
