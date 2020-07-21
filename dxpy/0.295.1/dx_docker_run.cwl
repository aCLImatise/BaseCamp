class: CommandLineTool
id: ../../../dx_docker_run.cwl
inputs:
- id: volume
  doc: Directory to mount inside the container. Can be supplied multiple times (e.g.
    -v /mnt/data:/mnt/data -v /host:/guest
  type: string
  inputBinding:
    prefix: --volume
- id: env
  doc: Environment variables to set within container. Can be supplied multiple times
    (e.g. -e foo=bar -e pizza=pie
  type: string
  inputBinding:
    prefix: --env
- id: entry_point
  doc: Overwrite default entry point for image
  type: string
  inputBinding:
    prefix: --entrypoint
- id: workdir
  doc: Working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: quiet
  doc: Suppress printing of image metadata
  type: boolean
  inputBinding:
    prefix: --quiet
- id: rootfs
  doc: Use directory pointed to here for rootfs instead of extracting the image (for
    expert use/development purposes)
  type: string
  inputBinding:
    prefix: --rootfs
- id: rm
  doc: Automatically remove the container when it exits
  type: boolean
  inputBinding:
    prefix: --rm
- id: user
  doc: 'User to execute command as: *currently ignored*'
  type: string
  inputBinding:
    prefix: --user
- id: image
  doc: image name
  type: string
  inputBinding:
    position: 0
- id: command
  doc: command to run within container
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-docker
- run
