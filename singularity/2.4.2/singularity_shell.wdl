version 1.0

task SingularityShell {
  input {
    Boolean? app
    String? bind
    Boolean? contain
    Boolean? contain_all
    Boolean? clean_env
    String? home
    Boolean? ipc
    Boolean? join
    Boolean? net
    Boolean? nv
    Boolean? overlay
    Boolean? pid
    Boolean? pwd
    File? scratch
    String? shell
    Boolean? user_ns
    Boolean? workdir
    Boolean? writable
    String singularity
  }
  command <<<
    singularity shell \
      ~{singularity} \
      ~{true="--app" false="" app} \
      ~{if defined(bind) then ("--bind " +  '"' + bind + '"') else ""} \
      ~{true="--contain" false="" contain} \
      ~{true="--containall" false="" contain_all} \
      ~{true="--cleanenv" false="" clean_env} \
      ~{if defined(home) then ("--home " +  '"' + home + '"') else ""} \
      ~{true="--ipc" false="" ipc} \
      ~{true="--join" false="" join} \
      ~{true="--net" false="" net} \
      ~{true="--nv" false="" nv} \
      ~{true="--overlay" false="" overlay} \
      ~{true="--pid" false="" pid} \
      ~{true="--pwd" false="" pwd} \
      ~{if defined(scratch) then ("--scratch " +  '"' + scratch + '"') else ""} \
      ~{if defined(shell) then ("--shell " +  '"' + shell + '"') else ""} \
      ~{true="--userns" false="" user_ns} \
      ~{true="--workdir" false="" workdir} \
      ~{true="--writable" false="" writable}
  >>>
  parameter_meta {
    app: "Include an installed container app in the environment"
    bind: "A user-bind path specification.  spec has the format src[:dest[:opts]], where src and dest are outside and inside paths.  If dest is not given, it is set equal to src.  Mount options ('opts') may be specified as 'ro' (read-only) or 'rw' (read/write, which is the default). This option can be called multiple times."
    contain: "Use minimal /dev and empty other directories (e.g. /tmp and /home/ubuntu) instead of sharing filesystems on your host"
    contain_all: "Contain not only file systems, but also PID and IPC"
    clean_env: "Clean environment before running container"
    home: "A home directory specification.  spec can either be a src path or src:dest pair.  src is the source path of the home directory outside the container and dest overrides the home directory within the container"
    ipc: "Run container in a new IPC namespace"
    join: "Join a running named instance of the given container  image"
    net: "Run container in a new network namespace (loopback is only network device active)"
    nv: "Enable experimental Nvidia support"
    overlay: "Use a persistent overlayFS via a writable image"
    pid: "Run container in a new PID namespace (creates child)"
    pwd: "Initial working directory for payload process inside the container"
    scratch: "Include a scratch directory within the container that is linked to a temporary dir (use -W to force location)"
    shell: "Path to program to use for interactive shell"
    user_ns: "Run container in a new user namespace (this allows Singularity to run completely unprivileged on recent kernels and doesn't support all features)"
    workdir: "Working directory to be used for /tmp, /var/tmp and /home/ubuntu (if -c/--contain was also used)"
    writable: "By default all Singularity containers are available as read only. This option makes the file system accessible as read/write."
    singularity: ""
  }
}