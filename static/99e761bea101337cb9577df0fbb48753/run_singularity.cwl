class: CommandLineTool
id: run_singularity.cwl
inputs:
- id: app
  doc: Run an app's runscript instead of the default one
  type: boolean
  inputBinding:
    prefix: --app
- id: bind
  doc: A user-bind path specification.  spec has the format src[:dest[:opts]], where
    src and dest are outside and inside paths.  If dest is not given, it is set equal
    to src.  Mount options ('opts') may be specified as 'ro' (read-only) or 'rw' (read/write,
    which is the  default). This option can be called multiple times.
  type: string
  inputBinding:
    prefix: --bind
- id: contain
  doc: Use minimal /dev and empty other directories (e.g. /tmp and /home/ubuntu) instead
    of sharing filesystems on your host
  type: boolean
  inputBinding:
    prefix: --contain
- id: contain_all
  doc: Contain not only file systems, but also PID and IPC
  type: boolean
  inputBinding:
    prefix: --containall
- id: clean_env
  doc: Clean environment before running container
  type: boolean
  inputBinding:
    prefix: --cleanenv
- id: home
  doc: A home directory specification.  spec can either be a src path or src:dest
    pair.  src is the source path of the home directory outside the container and
    dest overrides the home directory within the container
  type: string
  inputBinding:
    prefix: --home
- id: ipc
  doc: Run container in a new IPC namespace
  type: boolean
  inputBinding:
    prefix: --ipc
- id: net
  doc: Run container in a new network namespace (loopback is only network device active)
  type: boolean
  inputBinding:
    prefix: --net
- id: nv
  doc: Enable experimental Nvidia support
  type: boolean
  inputBinding:
    prefix: --nv
- id: overlay
  doc: Use a persistent overlayFS via a writable image
  type: boolean
  inputBinding:
    prefix: --overlay
- id: pid
  doc: Run container in a new PID namespace
  type: boolean
  inputBinding:
    prefix: --pid
- id: pwd
  doc: Initial working directory for payload process inside the container
  type: boolean
  inputBinding:
    prefix: --pwd
- id: scratch
  doc: Include a scratch directory within the container that  is linked to a temporary
    dir (use -W to force location)
  type: File
  inputBinding:
    prefix: --scratch
- id: user_ns
  doc: Run container in a new user namespace (this allows Singularity to run completely
    unprivileged on recent kernels and doesn't support all features)
  type: boolean
  inputBinding:
    prefix: --userns
- id: workdir
  doc: Working directory to be used for /tmp, /var/tmp and /home/ubuntu (if -c/--contain
    was also used)
  type: boolean
  inputBinding:
    prefix: --workdir
- id: writable
  doc: By default all Singularity containers are available as read only. This option
    makes the file system accessible as read/write.
  type: boolean
  inputBinding:
    prefix: --writable
outputs: []
cwlVersion: v1.1
baseCommand:
- run-singularity
