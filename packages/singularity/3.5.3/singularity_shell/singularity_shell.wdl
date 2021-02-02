version 1.0

task SingularityShell {
  input {
    File? add_caps
    File? bind
    Boolean? clean_env
    Directory directory_slash
    String uid
  }
  command <<<
    singularity shell \
      ~{directory_slash} \
      ~{uid} \
      ~{if defined(add_caps) then ("--add-caps " +  '"' + add_caps + '"') else ""} \
      ~{if defined(bind) then ("--bind " +  '"' + bind + '"') else ""} \
      ~{if (clean_env) then "--cleanenv" else ""}
  >>>
  parameter_meta {
    add_caps: "a comma separated capability list to add\\n--allow-setuid           allow setuid binaries in container (root only)\\n--app string             set an application to run inside a container\\n--apply-cgroups string   apply cgroups from file for container\\nprocesses (root only)"
    bind: "a user-bind path specification.  spec has\\nthe format src[:dest[:opts]], where src and\\ndest are outside and inside paths.  If dest\\nis not given, it is set equal to src.\\nMount options ('opts') may be specified as\\n'ro' (read-only) or 'rw' (read/write, which\\nis the default). Multiple bind paths can be\\ngiven by a comma separated list."
    clean_env: "clean environment before running container\\n-c, --contain                use minimal /dev and empty other\\ndirectories (e.g. /tmp and $HOME) instead\\nof sharing filesystems from your host\\n-C, --containall             contain not only file systems, but also\\nPID, IPC, and environment\\n--disable-cache          dont use cache, and dont create cache\\n--dns string             list of DNS server separated by commas to\\nadd in resolv.conf\\n--docker-login           login to a Docker Repository interactively\\n--drop-caps string       a comma separated capability list to drop\\n-f, --fakeroot               run container in new user namespace as uid 0\\n-h, --help                   help for shell\\n-H, --home string            a home directory specification.  spec can\\neither be a src path or src:dest pair.  src\\nis the source path of the home directory\\noutside the container and dest overrides\\nthe home directory within the container.\\n(default \\\"/root\\\")\\n--hostname string        set container hostname\\n-i, --ipc                    run container in a new IPC namespace\\n--keep-privs             let root user keep privileges in container\\n(root only)\\n-n, --net                    run container in a new network namespace\\n(sets up a bridge network interface by default)\\n--network string         specify desired network type separated by\\ncommas, each network will bring up a\\ndedicated interface inside container\\n(default \\\"bridge\\\")\\n--network-args strings   specify network arguments to pass to CNI plugins\\n--no-home                do NOT mount users home directory if home\\nis not the current working directory\\n--no-init                do NOT start shim process with --pid\\n--no-nv\\n--no-privs               drop all privileges from root user in container)\\n--nohttps                do NOT use HTTPS with the docker://\\ntransport (useful for local docker\\nregistries without a certificate)\\n--nonet                  disable VM network handling\\n--nv                     enable experimental Nvidia support\\n-o, --overlay strings        use an overlayFS image for persistent data\\nstorage or as read-only layer of container\\n--passphrase             prompt for an encryption passphrase\\n--pem-path string        enter an path to a PEM formated RSA key for\\nan encrypted container\\n-p, --pid                    run container in a new PID namespace\\n--pwd string             initial working directory for payload\\nprocess inside the container\\n--rocm                   enable experimental Rocm support\\n-S, --scratch strings        include a scratch directory within the\\ncontainer that is linked to a temporary dir\\n(use -W to force location)\\n--security strings       enable security features (SELinux,\\nApparmor, Seccomp)\\n-s, --shell string           path to program to use for interactive shell\\n--syos                   execute SyOS shell\\n-u, --userns                 run container in a new user namespace,\\nallowing Singularity to run completely\\nunprivileged on recent kernels. This\\ndisables some features of Singularity, for\\nexample it only works with sandbox images.\\n--uts                    run container in a new UTS namespace\\n--vm                     enable VM support\\n--vm-cpu string          number of CPU cores to allocate to Virtual\\nMachine (implies --vm) (default \\\"1\\\")\\n--vm-err                 enable attaching stderr from VM\\n--vm-ip string           IP Address to assign for container usage.\\nDefaults to DHCP within bridge network.\\n(default \\\"dhcp\\\")\\n--vm-ram string          amount of RAM in MiB to allocate to Virtual\\nMachine (implies --vm) (default \\\"1024\\\")\\n-W, --workdir string         working directory to be used for /tmp,\\n/var/tmp and $HOME (if -c/--contain was\\nalso used)\\n-w, --writable               by default all Singularity containers are\\navailable as read only. This option makes\\nthe file system accessible as read/write.\\n--writable-tmpfs         makes the file system accessible as\\nread-write with non persistent data (with\\noverlay support only)"
    directory_slash: "sandbox format. Directory containing a valid root file \\nsystem and optionally Singularity meta-data."
    uid: "PID  PPID  C STIME TTY          TIME CMD"
  }
  output {
    File out_stdout = stdout()
  }
}