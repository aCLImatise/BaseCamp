class: CommandLineTool
id: singularity_test.cwl
inputs:
- id: in_add_caps
  doc: a comma separated capability list to add
  type: string?
  inputBinding:
    prefix: --add-caps
- id: in_allow_setuid
  doc: allow setuid binaries in container (root only)
  type: boolean?
  inputBinding:
    prefix: --allow-setuid
- id: in_app
  doc: set an application to run inside a container
  type: string?
  inputBinding:
    prefix: --app
- id: in_apply_c_groups
  doc: "apply cgroups from file for container\nprocesses (root only)"
  type: File?
  inputBinding:
    prefix: --apply-cgroups
- id: in_bind
  doc: "a user-bind path specification.  spec has\nthe format src[:dest[:opts]], where\
    \ src and\ndest are outside and inside paths.  If dest\nis not given, it is set\
    \ equal to src.\nMount options ('opts') may be specified as\n'ro' (read-only)\
    \ or 'rw' (read/write, which\nis the default). Multiple bind paths can be\ngiven\
    \ by a comma separated list."
  type: File?
  inputBinding:
    prefix: --bind
- id: in_clean_env
  doc: clean environment before running container
  type: boolean?
  inputBinding:
    prefix: --cleanenv
- id: in_contain
  doc: "use minimal /dev and empty other\ndirectories (e.g. /tmp and $HOME) instead\n\
    of sharing filesystems from your host"
  type: boolean?
  inputBinding:
    prefix: --contain
- id: in_contain_all
  doc: "contain not only file systems, but also\nPID, IPC, and environment"
  type: boolean?
  inputBinding:
    prefix: --containall
- id: in_disable_cache
  doc: dont use cache, and dont create cache
  type: boolean?
  inputBinding:
    prefix: --disable-cache
- id: in_dns
  doc: "list of DNS server separated by commas to\nadd in resolv.conf"
  type: string?
  inputBinding:
    prefix: --dns
- id: in_docker_login
  doc: login to a Docker Repository interactively
  type: boolean?
  inputBinding:
    prefix: --docker-login
- id: in_drop_caps
  doc: a comma separated capability list to drop
  type: string?
  inputBinding:
    prefix: --drop-caps
- id: in_fakeroot
  doc: run container in new user namespace as uid 0
  type: boolean?
  inputBinding:
    prefix: --fakeroot
- id: in_home
  doc: "a home directory specification.  spec can\neither be a src path or src:dest\
    \ pair.  src\nis the source path of the home directory\noutside the container\
    \ and dest overrides\nthe home directory within the container.\n(default \"/root\"\
    )"
  type: File?
  inputBinding:
    prefix: --home
- id: in_hostname
  doc: set container hostname
  type: string?
  inputBinding:
    prefix: --hostname
- id: in_ipc
  doc: run container in a new IPC namespace
  type: boolean?
  inputBinding:
    prefix: --ipc
- id: in_keep_privs
  doc: "let root user keep privileges in container\n(root only)"
  type: boolean?
  inputBinding:
    prefix: --keep-privs
- id: in_net
  doc: "run container in a new network namespace\n(sets up a bridge network interface\
    \ by default)"
  type: boolean?
  inputBinding:
    prefix: --net
- id: in_network
  doc: "specify desired network type separated by\ncommas, each network will bring\
    \ up a\ndedicated interface inside container\n(default \"bridge\")"
  type: string?
  inputBinding:
    prefix: --network
- id: in_network_args
  doc: specify network arguments to pass to CNI plugins
  type: string?
  inputBinding:
    prefix: --network-args
- id: in_no_home
  doc: "do NOT mount users home directory if home\nis not the current working directory"
  type: boolean?
  inputBinding:
    prefix: --no-home
- id: in_no_in_it
  doc: do NOT start shim process with --pid
  type: boolean?
  inputBinding:
    prefix: --no-init
- id: in_no_privs
  doc: drop all privileges from root user in container)
  type: boolean?
  inputBinding:
    prefix: --no-privs
- id: in_no_https
  doc: "do NOT use HTTPS with the docker://\ntransport (useful for local docker\n\
    registries without a certificate)"
  type: boolean?
  inputBinding:
    prefix: --nohttps
- id: in_no_net
  doc: disable VM network handling
  type: boolean?
  inputBinding:
    prefix: --nonet
- id: in_nv
  doc: enable experimental Nvidia support
  type: boolean?
  inputBinding:
    prefix: --nv
- id: in_overlay
  doc: "use an overlayFS image for persistent data\nstorage or as read-only layer\
    \ of container"
  type: string?
  inputBinding:
    prefix: --overlay
- id: in_passphrase
  doc: prompt for an encryption passphrase
  type: boolean?
  inputBinding:
    prefix: --passphrase
- id: in_pem_path
  doc: "enter an path to a PEM formated RSA key for\nan encrypted container"
  type: File?
  inputBinding:
    prefix: --pem-path
- id: in_pid
  doc: run container in a new PID namespace
  type: boolean?
  inputBinding:
    prefix: --pid
- id: in_pwd
  doc: "initial working directory for payload\nprocess inside the container"
  type: Directory?
  inputBinding:
    prefix: --pwd
- id: in_roc_m
  doc: enable experimental Rocm support
  type: boolean?
  inputBinding:
    prefix: --rocm
- id: in_scratch
  doc: "include a scratch directory within the\ncontainer that is linked to a temporary\
    \ dir\n(use -W to force location)"
  type: Directory?
  inputBinding:
    prefix: --scratch
- id: in_security
  doc: "enable security features (SELinux,\nApparmor, Seccomp)"
  type: string?
  inputBinding:
    prefix: --security
- id: in_user_ns
  doc: "run container in a new user namespace,\nallowing Singularity to run completely\n\
    unprivileged on recent kernels. This\ndisables some features of Singularity, for\n\
    example it only works with sandbox images."
  type: boolean?
  inputBinding:
    prefix: --userns
- id: in_uts
  doc: run container in a new UTS namespace
  type: boolean?
  inputBinding:
    prefix: --uts
- id: in_vm
  doc: enable VM support
  type: boolean?
  inputBinding:
    prefix: --vm
- id: in_vm_cpu
  doc: "number of CPU cores to allocate to Virtual\nMachine (implies --vm) (default\
    \ \"1\")"
  type: long?
  inputBinding:
    prefix: --vm-cpu
- id: in_vm_err
  doc: enable attaching stderr from VM
  type: boolean?
  inputBinding:
    prefix: --vm-err
- id: in_vm_ip
  doc: "IP Address to assign for container usage.\nDefaults to DHCP within bridge\
    \ network.\n(default \"dhcp\")"
  type: string?
  inputBinding:
    prefix: --vm-ip
- id: in_vm_ram
  doc: "amount of RAM in MiB to allocate to Virtual\nMachine (implies --vm) (default\
    \ \"1024\")"
  type: long?
  inputBinding:
    prefix: --vm-ram
- id: in_workdir
  doc: "working directory to be used for /tmp,\n/var/tmp and $HOME (if -c/--contain\
    \ was\nalso used)"
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_writable
  doc: "by default all Singularity containers are\navailable as read only. This option\
    \ makes\nthe file system accessible as read/write."
  type: boolean?
  inputBinding:
    prefix: --writable
- id: in_writable_tmpfs
  doc: "makes the file system accessible as\nread-write with non persistent data (with\n\
    overlay support only)"
  type: boolean?
  inputBinding:
    prefix: --writable-tmpfs
- id: in_exec
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- test
