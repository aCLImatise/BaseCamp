version 1.0

task Runsingularity {
  input {
    String? add_caps
    Boolean? allow_setuid
    String? app
    File? apply_c_groups
    File? bind
    Boolean? clean_env
    Boolean? contain
    Boolean? contain_all
    Boolean? disable_cache
    String? dns
    Boolean? docker_login
    String? drop_caps
    Boolean? fakeroot
    File? home
    String? hostname
    Boolean? ipc
    Boolean? keep_privs
    Boolean? net
    String? network
    String? network_args
    Boolean? no_home
    Boolean? no_in_it
    Boolean? no_privs
    Boolean? no_https
    Boolean? no_net
    Boolean? nv
    String? overlay
    Boolean? passphrase
    File? pem_path
    Boolean? pid
    Directory? pwd
    Boolean? roc_m
    Directory? scratch
    String? security
    Boolean? user_ns
    Boolean? uts
    Boolean? vm
    Int? vm_cpu
    Boolean? vm_err
    String? vm_ip
    Int? vm_ram
    Directory? workdir
    Boolean? writable
    Boolean? writable_tmpfs
    String singularity
    String? run
    String? options_dot_dot_dot
  }
  command <<<
    run_singularity \
      ~{singularity} \
      ~{run} \
      ~{options_dot_dot_dot} \
      ~{if defined(add_caps) then ("--add-caps " +  '"' + add_caps + '"') else ""} \
      ~{if (allow_setuid) then "--allow-setuid" else ""} \
      ~{if defined(app) then ("--app " +  '"' + app + '"') else ""} \
      ~{if defined(apply_c_groups) then ("--apply-cgroups " +  '"' + apply_c_groups + '"') else ""} \
      ~{if defined(bind) then ("--bind " +  '"' + bind + '"') else ""} \
      ~{if (clean_env) then "--cleanenv" else ""} \
      ~{if (contain) then "--contain" else ""} \
      ~{if (contain_all) then "--containall" else ""} \
      ~{if (disable_cache) then "--disable-cache" else ""} \
      ~{if defined(dns) then ("--dns " +  '"' + dns + '"') else ""} \
      ~{if (docker_login) then "--docker-login" else ""} \
      ~{if defined(drop_caps) then ("--drop-caps " +  '"' + drop_caps + '"') else ""} \
      ~{if (fakeroot) then "--fakeroot" else ""} \
      ~{if defined(home) then ("--home " +  '"' + home + '"') else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if (ipc) then "--ipc" else ""} \
      ~{if (keep_privs) then "--keep-privs" else ""} \
      ~{if (net) then "--net" else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(network_args) then ("--network-args " +  '"' + network_args + '"') else ""} \
      ~{if (no_home) then "--no-home" else ""} \
      ~{if (no_in_it) then "--no-init" else ""} \
      ~{if (no_privs) then "--no-privs" else ""} \
      ~{if (no_https) then "--nohttps" else ""} \
      ~{if (no_net) then "--nonet" else ""} \
      ~{if (nv) then "--nv" else ""} \
      ~{if defined(overlay) then ("--overlay " +  '"' + overlay + '"') else ""} \
      ~{if (passphrase) then "--passphrase" else ""} \
      ~{if defined(pem_path) then ("--pem-path " +  '"' + pem_path + '"') else ""} \
      ~{if (pid) then "--pid" else ""} \
      ~{if defined(pwd) then ("--pwd " +  '"' + pwd + '"') else ""} \
      ~{if (roc_m) then "--rocm" else ""} \
      ~{if defined(scratch) then ("--scratch " +  '"' + scratch + '"') else ""} \
      ~{if defined(security) then ("--security " +  '"' + security + '"') else ""} \
      ~{if (user_ns) then "--userns" else ""} \
      ~{if (uts) then "--uts" else ""} \
      ~{if (vm) then "--vm" else ""} \
      ~{if defined(vm_cpu) then ("--vm-cpu " +  '"' + vm_cpu + '"') else ""} \
      ~{if (vm_err) then "--vm-err" else ""} \
      ~{if defined(vm_ip) then ("--vm-ip " +  '"' + vm_ip + '"') else ""} \
      ~{if defined(vm_ram) then ("--vm-ram " +  '"' + vm_ram + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if (writable) then "--writable" else ""} \
      ~{if (writable_tmpfs) then "--writable-tmpfs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_caps: "a comma separated capability list to add"
    allow_setuid: "allow setuid binaries in container (root only)"
    app: "set an application to run inside a container"
    apply_c_groups: "apply cgroups from file for container\\nprocesses (root only)"
    bind: "a user-bind path specification.  spec has\\nthe format src[:dest[:opts]], where src and\\ndest are outside and inside paths.  If dest\\nis not given, it is set equal to src.\\nMount options ('opts') may be specified as\\n'ro' (read-only) or 'rw' (read/write, which\\nis the default). Multiple bind paths can be\\ngiven by a comma separated list."
    clean_env: "clean environment before running container"
    contain: "use minimal /dev and empty other\\ndirectories (e.g. /tmp and $HOME) instead\\nof sharing filesystems from your host"
    contain_all: "contain not only file systems, but also\\nPID, IPC, and environment"
    disable_cache: "dont use cache, and dont create cache"
    dns: "list of DNS server separated by commas to\\nadd in resolv.conf"
    docker_login: "login to a Docker Repository interactively"
    drop_caps: "a comma separated capability list to drop"
    fakeroot: "run container in new user namespace as uid 0"
    home: "a home directory specification.  spec can\\neither be a src path or src:dest pair.  src\\nis the source path of the home directory\\noutside the container and dest overrides\\nthe home directory within the container.\\n(default \\\"/root\\\")"
    hostname: "set container hostname"
    ipc: "run container in a new IPC namespace"
    keep_privs: "let root user keep privileges in container\\n(root only)"
    net: "run container in a new network namespace\\n(sets up a bridge network interface by default)"
    network: "specify desired network type separated by\\ncommas, each network will bring up a\\ndedicated interface inside container\\n(default \\\"bridge\\\")"
    network_args: "specify network arguments to pass to CNI plugins"
    no_home: "do NOT mount users home directory if home\\nis not the current working directory"
    no_in_it: "do NOT start shim process with --pid"
    no_privs: "drop all privileges from root user in container)"
    no_https: "do NOT use HTTPS with the docker://\\ntransport (useful for local docker\\nregistries without a certificate)"
    no_net: "disable VM network handling"
    nv: "enable experimental Nvidia support"
    overlay: "use an overlayFS image for persistent data\\nstorage or as read-only layer of container"
    passphrase: "prompt for an encryption passphrase"
    pem_path: "enter an path to a PEM formated RSA key for\\nan encrypted container"
    pid: "run container in a new PID namespace"
    pwd: "initial working directory for payload\\nprocess inside the container"
    roc_m: "enable experimental Rocm support"
    scratch: "include a scratch directory within the\\ncontainer that is linked to a temporary dir\\n(use -W to force location)"
    security: "enable security features (SELinux,\\nApparmor, Seccomp)"
    user_ns: "run container in a new user namespace,\\nallowing Singularity to run completely\\nunprivileged on recent kernels. This\\ndisables some features of Singularity, for\\nexample it only works with sandbox images."
    uts: "run container in a new UTS namespace"
    vm: "enable VM support"
    vm_cpu: "number of CPU cores to allocate to Virtual\\nMachine (implies --vm) (default \\\"1\\\")"
    vm_err: "enable attaching stderr from VM"
    vm_ip: "IP Address to assign for container usage.\\nDefaults to DHCP within bridge network.\\n(default \\\"dhcp\\\")"
    vm_ram: "amount of RAM in MiB to allocate to Virtual\\nMachine (implies --vm) (default \\\"1024\\\")"
    workdir: "working directory to be used for /tmp,\\n/var/tmp and $HOME (if -c/--contain was\\nalso used)"
    writable: "by default all Singularity containers are\\navailable as read only. This option makes\\nthe file system accessible as read/write."
    writable_tmpfs: "makes the file system accessible as\\nread-write with non persistent data (with\\noverlay support only)"
    singularity: ""
    run: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}