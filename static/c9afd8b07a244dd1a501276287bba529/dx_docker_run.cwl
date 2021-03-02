class: CommandLineTool
id: dx_docker_run.cwl
inputs:
- id: in_volume
  doc: "Directory to mount inside the container. Can be\nsupplied multiple times (e.g.\
    \ -v /mnt/data:/mnt/data\n-v /host:/guest"
  type: Directory?
  inputBinding:
    prefix: --volume
- id: in_env
  doc: "Environment variables to set within container. Can be\nsupplied multiple times\
    \ (e.g. -e foo=bar -e pizza=pie"
  type: string?
  inputBinding:
    prefix: --env
- id: in_entry_point
  doc: Overwrite default entry point for image
  type: string?
  inputBinding:
    prefix: --entrypoint
- id: in_workdir
  doc: Working directory
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_quiet
  doc: Suppress printing of image metadata
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_rootfs
  doc: "Use directory pointed to here for rootfs instead of\nextracting the image\
    \ (for expert use/development\npurposes)"
  type: Directory?
  inputBinding:
    prefix: --rootfs
- id: in_rm
  doc: Automatically remove the container when it exits
  type: boolean?
  inputBinding:
    prefix: --rm
- id: in_user
  doc: 'User to execute command as: *currently ignored*'
  type: string?
  inputBinding:
    prefix: --user
- id: in_image
  doc: image name
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: command to run within container
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dx-docker
- run
