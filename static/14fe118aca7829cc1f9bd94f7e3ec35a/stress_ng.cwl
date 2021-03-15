class: CommandLineTool
id: stress_ng.cwl
inputs:
- id: in_abort
  doc: abort all stressors if any stressor fails
  type: boolean?
  inputBinding:
    prefix: --abort
- id: in_aggressive
  doc: enable all aggressive options
  type: boolean?
  inputBinding:
    prefix: --aggressive
- id: in_all
  doc: start N workers of each stress test
  type: string?
  inputBinding:
    prefix: --all
- id: in_back_off
  doc: "wait of N microseconds before work starts\n--class name         specify a\
    \ class of stressors, use with --sequential"
  type: string?
  inputBinding:
    prefix: --backoff
- id: in_dry_run
  doc: do not run
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_job
  doc: run the named jobfile
  type: File?
  inputBinding:
    prefix: --job
- id: in_keep_name
  doc: "keep stress worker names to be 'stress-ng'\n--log-brief          less verbose\
    \ log messages\n--log-file filename  log messages to a log file\n--maximize  \
    \         enable maximum stress options\n--max-fd             set maximum file\
    \ descriptor limit"
  type: boolean?
  inputBinding:
    prefix: --keep-name
- id: in_metrics
  doc: "print pseudo metrics of activity\n--metrics-brief      enable metrics and\
    \ only show non-zero results\n--minimize           enable minimal stress options\n\
    --no-madvise         don't use random madvise options for each mmap\n--no-rand-seed\
    \       seed random numbers with the same constant\n--page-in            touch\
    \ allocated pages that are not in core\n--parallel N         synonym for 'all\
    \ N'\n--pathological       enable stressors that are known to hang a machine\n\
    --perf               display perf statistics"
  type: boolean?
  inputBinding:
    prefix: --metrics
- id: in_quiet
  doc: quiet output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_random
  doc: "start N random workers\n--sched type         set scheduler type\n--sched-prio\
    \ N       set scheduler priority level N\n--sched-period N     set period for\
    \ SCHED_DEADLINE to N nanosecs (Linux only)\n--sched-runtime N    set runtime\
    \ for SCHED_DEADLINE to N nanosecs (Linux only)\n--sched-deadline N   set deadline\
    \ for SCHED_DEADLINE to N nanosecs (Liunx only)\n--sched-reclaim      set reclaim\
    \ cpu bandwidth for deadline scheduler (Liunx only)\n--sequential N       run\
    \ all stressors one by one, invoking N of them\n--stressors          show available\
    \ stress tests\n--syslog             log messages to the syslog\n--taskset   \
    \         use specific CPUs (set CPU affinity)\n--temp-path path     specify path\
    \ for temporary directories and files\n--thrash             force all pages in\
    \ causing swap thrashing"
  type: File?
  inputBinding:
    prefix: --random
- id: in_timeout
  doc: "timeout after T seconds\n--timer-slack        enable timer slack mode\n--times\
    \              show run time summary at end of the run\n--timestamp          timestamp\
    \ log output\n--tz                 collect temperatures from thermal zones (Linux\
    \ only)"
  type: string?
  inputBinding:
    prefix: --timeout
- id: in_verbose
  doc: "verbose output\n--verify             verify results (not available on all\
    \ tests)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_yaml
  doc: output results to YAML formatted filed
  type: File?
  inputBinding:
    prefix: --yaml
- id: in_exclude
  doc: list of stressors to exclude (not run)
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_access
  doc: start N workers that stress file access permissions
  type: File?
  inputBinding:
    prefix: --access
- id: in_access_ops
  doc: stop after N file access bogo operations
  type: File?
  inputBinding:
    prefix: --access-ops
- id: in_af_alg
  doc: start N workers that stress AF_ALG socket domain
  type: string?
  inputBinding:
    prefix: --af-alg
- id: in_af_alg_ops
  doc: stop after N af-alg bogo operations
  type: string?
  inputBinding:
    prefix: --af-alg-ops
- id: in_af_alg_dump
  doc: dump internal list from /proc/crypto to stdout
  type: boolean?
  inputBinding:
    prefix: --af-alg-dump
- id: in_affinity
  doc: start N workers that rapidly change CPU affinity
  type: string?
  inputBinding:
    prefix: --affinity
- id: in_affinity_ops
  doc: stop after N affinity bogo operations
  type: string?
  inputBinding:
    prefix: --affinity-ops
- id: in_affinity_rand
  doc: change affinity randomly rather than sequentially
  type: boolean?
  inputBinding:
    prefix: --affinity-rand
- id: in_aio
  doc: start N workers that issue async I/O requests
  type: string?
  inputBinding:
    prefix: --aio
- id: in_aio_ops
  doc: stop after N bogo async I/O requests
  type: string?
  inputBinding:
    prefix: --aio-ops
- id: in_aio_requests
  doc: number of async I/O requests per worker
  type: long?
  inputBinding:
    prefix: --aio-requests
- id: in_a_iol
  doc: start N workers that exercise Linux async I/O
  type: string?
  inputBinding:
    prefix: --aiol
- id: in_a_iol_ops
  doc: stop after N bogo Linux aio async I/O requests
  type: string?
  inputBinding:
    prefix: --aiol-ops
- id: in_a_iol_requests
  doc: number of Linux aio async I/O requests per worker
  type: long?
  inputBinding:
    prefix: --aiol-requests
- id: in_apparmor
  doc: start N workers exercising AppArmor interfaces
  type: boolean?
  inputBinding:
    prefix: --apparmor
- id: in_apparmor_ops
  doc: stop after N bogo AppArmor worker bogo operations
  type: string?
  inputBinding:
    prefix: --apparmor-ops
- id: in_atomic
  doc: start N workers exercising GCC atomic operations
  type: boolean?
  inputBinding:
    prefix: --atomic
- id: in_atomic_ops
  doc: stop after N bogo atomic bogo operations
  type: boolean?
  inputBinding:
    prefix: --atomic-ops
- id: in_bad_alt_stack
  doc: start N workers exercising bad signal stacks
  type: string?
  inputBinding:
    prefix: --bad-altstack
- id: in_bad_alt_stack_ops
  doc: stop after N bogo signal stack SIGSEGVs
  type: string?
  inputBinding:
    prefix: --bad-altstack-ops
- id: in_bad_ioctl
  doc: start N stressors that perform illegal read ioctls on devices
  type: string?
  inputBinding:
    prefix: --bad-ioctl
- id: in_bad_ioctl_ops
  doc: N   stop after N bad ioctl bogo operations
  type: boolean?
  inputBinding:
    prefix: --bad-ioctl-ops
- id: in_big_heap
  doc: "start N workers that grow the heap using calloc()\n--bigheap-ops N      stop\
    \ after N bogo bigheap operations\n--bigheap-growth N   grow heap by N bytes per\
    \ iteration\n--bind-mount N       start N workers exercising bind mounts\n--bind-mount-ops\
    \ N   stop after N bogo bind mount operations\n--binderfs N         start N workers\
    \ exercising binderfs\n--binderfs-ops N     stop after N bogo binderfs operations\n\
    --branch N           start N workers that force branch misprediction\n--branch-ops\
    \ N       stop after N branch misprediction branches\n--brk N              start\
    \ N workers performing rapid brk calls\n--brk-ops N          stop after N brk\
    \ bogo operations\n--brk-mlock          attempt to mlock newly mapped brk pages\n\
    --brk-notouch        don't touch (page in) new data segment page\n--bsearch N\
    \          start N workers that exercise a binary search\n--bsearch-ops N    \
    \  stop after N binary search bogo operations\n--bsearch-size N     number of\
    \ 32 bit integers to bsearch"
  type: long?
  inputBinding:
    prefix: --bigheap
- id: in_cache
  doc: "start N CPU cache thrashing workers\n--cache-ops N        stop after N cache\
    \ bogo operations\n--cache-no-affinity  do not change CPU affinity\n--cache-fence\
    \        serialize stores\n--cache-flush        flush cache after every memory\
    \ write (x86 only)\n--cache-level N      only exercise specified cache\n--cache-prefetch\
    \     prefetch on memory reads/writes\n--cache-sfence       serialize stores with\
    \ sfence\n--cache-ways N       only fill specified number of cache ways\n--cap\
    \ N              start N workers exercising capget\n--cap-ops N          stop\
    \ cap workers after N bogo capget operations\n--chattr N           start N workers\
    \ thrashing chattr file mode bits\n--chattr-ops N       stop chattr workers after\
    \ N bogo operations\n--chdir N            start N workers thrashing chdir on many\
    \ paths\n--chdir-ops N        stop chdir workers after N bogo chdir operations\n\
    --chdir-dirs N       select number of directories to exercise chdir on\n--chmod\
    \ N            start N workers thrashing chmod file mode bits\n--chmod-ops N \
    \       stop chmod workers after N bogo operations\n--chown N            start\
    \ N workers thrashing chown file ownership\n--chown-ops N        stop chown workers\
    \ after N bogo operations\n--chroot N           start N workers thrashing chroot\n\
    --chroot-ops N       stop chhroot workers after N bogo operations\n--clock N \
    \           start N workers thrashing clocks and POSIX timers\n--clock-ops N \
    \       stop clock workers after N bogo operations\n--clone N            start\
    \ N workers that rapidly create and reap clones\n--clone-ops N        stop after\
    \ N bogo clone operations\n--clone-max N        set upper limit of N clones per\
    \ worker\n--close N            start N workers that exercise races on close\n\
    --close-ops N        stop after N bogo close operations\n--context N         \
    \ start N workers exercising user context\n--context-ops N      stop context workers\
    \ after N bogo operations\n--copy-file N        start N workers that copy file\
    \ data\n--copy-file-ops N    stop after N copy bogo operations\n--copy-file-bytes\
    \ N  specify size of file to be copied"
  type: long?
  inputBinding:
    prefix: --cache
- id: in_cpu
  doc: "start N workers spinning on sqrt(rand())\n--cpu-ops N          stop after\
    \ N cpu bogo operations"
  type: string?
  inputBinding:
    prefix: --cpu
- id: in_cpu_load
  doc: "load CPU by P %, 0=sleep, 100=full load (see -c)\n--cpu-load-slice S   specify\
    \ time slice during busy load\n--cpu-method M       specify stress cpu method\
    \ M, default is all\n--cpu-online N       start N workers offlining/onlining the\
    \ CPUs\n--cpu-online-ops N   stop after N offline/online operations\n--crypt N\
    \            start N workers performing password encryption\n--crypt-ops N   \
    \     stop after N bogo crypt operations\n--cyclic N           start N cyclic\
    \ real time benchmark stressors\n--cyclic-ops N       stop after N cyclic timing\
    \ cycles\n--cyclic-method M    specify cyclic method M, default is clock_ns\n\
    --cyclic-dist N      calculate distribution of interval N nanosecs\n--cyclic-policy\
    \ P    used rr or fifo scheduling policy\n--cyclic-prio N      real time scheduling\
    \ priority 1..100\n--cyclic-sleep N     sleep time of real time timer in nanosecs\n\
    --daemon N           start N workers creating multiple daemons\n--daemon-ops N\
    \       stop when N daemons have been created\n--dccp N             start N workers\
    \ exercising network DCCP I/O\n--dccp-domain D      specify DCCP domain, default\
    \ is ipv4\n--dccp-ops N         stop after N DCCP  bogo operations\n--dccp-opts\
    \ option   DCCP data send options [send|sendmsg|sendmmsg]\n--dccp-port P     \
    \   use DCCP ports P to P + number of workers - 1"
  type: long?
  inputBinding:
    prefix: --cpu-load
- id: in_dentry
  doc: "start N dentry thrashing stressors\n--dentry-ops N       stop after N dentry\
    \ bogo operations\n--dentry-order O     specify unlink order (reverse, forward,\
    \ stride)\n--dentries N         create N dentries per iteration\n--dev N     \
    \         start N device entry thrashing stressors\n--dev-ops N          stop\
    \ after N device thrashing bogo ops\n--dev-file name      specify the /dev/ file\
    \ to exercise\n--dev-shm N          start N /dev/shm file and mmap stressors\n\
    --dev-shm-ops N      stop after N /dev/shm bogo ops\n--dir N              start\
    \ N directory thrashing stressors\n--dir-ops N          stop after N directory\
    \ bogo operations\n--dir-dirs N         select number of directories to exercise\
    \ dir on\n--dirdeep N          start N directory depth stressors\n--dirdeep-ops\
    \ N      stop after N directory depth bogo operations\n--dirdeep-dirs N     create\
    \ N directories per level\n--dirdeep-inodes N   create a maximum N inodes (N can\
    \ also be %)\n--dnotify N          start N workers exercising dnotify events\n\
    --dnotify-ops N      stop dnotify workers after N bogo operations\n--dup N   \
    \           start N workers exercising dup/close\n--dup-ops N          stop after\
    \ N dup/close bogo operations\n--dynlib N           start N workers exercising\
    \ dlopen/dlclose\n--dynlib-ops N       stop after N dlopen/dlclose bogo operations\n\
    --efivar N           start N workers that read EFI variables\n--efivar-ops N \
    \      stop after N EFI variable bogo read operations\n--enosys N           start\
    \ N workers that call non-existent system calls\n--enosys-ops N       stop after\
    \ N enosys bogo operations\n--env N              start N workers setting environment\
    \ vars\n--env-ops N          stop after N env bogo operations\n--epoll N     \
    \       start N workers doing epoll handled socket activity\n--epoll-ops N   \
    \     stop after N epoll bogo operations\n--epoll-port P       use socket ports\
    \ P upwards\n--epoll-domain D     specify socket domain, default is unix\n--eventfd\
    \ N          start N workers stressing eventfd read/writes\n--eventfd-ops N  \
    \    stop eventfd workers after N bogo operations\n--eventfs-nonblock   poll with\
    \ non-blocking I/O on eventfd fd\n--exec N             start N workers spinning\
    \ on fork() and exec()\n--exec-ops N         stop after N exec bogo operations\n\
    --exec-max P         create P workers per iteration, default is 1\n--fallocate\
    \ N        start N workers fallocating 16MB files\n--fallocate-ops N    stop after\
    \ N fallocate bogo operations\n--fallocate-bytes N  specify size of file to allocate\n\
    --fanotify N         start N workers exercising fanotify events\n--fanotify-ops\
    \ N     stop fanotify workers after N bogo operations\n--fault N            start\
    \ N workers producing page faults\n--fault-ops N        stop after N page fault\
    \ bogo operations\n--fcntl N            start N workers exercising fcntl commands\n\
    --fcntl-ops N        stop after N fcntl bogo operations\n--fiemap N          \
    \ start N workers exercising the FIEMAP ioctl\n--fiemap-ops N       stop after\
    \ N FIEMAP ioctl bogo operations\n--fiemap-bytes N     specify size of file to\
    \ fiemap\n--fifo N             start N workers exercising fifo I/O\n--fifo-ops\
    \ N         stop after N fifo bogo operations\n--fifo-readers N     number of\
    \ fifo reader stessors to start\n--file-ioctl N       start N workers exercising\
    \ file specific ioctls\n--file-ioctl-ops N   stop after N file ioctl bogo operations\n\
    --filename N         start N workers exercising filenames\n--filename-ops N  \
    \   stop after N filename bogo operations\n--filename-opts opt  specify allowed\
    \ filename options\n--flock N            start N workers locking a single file\n\
    --flock-ops N        stop after N flock bogo operations"
  type: long?
  inputBinding:
    prefix: --dentry
- id: in_fork
  doc: "start N workers spinning on fork() and exit()\n--fork-ops N         stop after\
    \ N fork bogo operations\n--fork-max P         create P workers per iteration,\
    \ default is 1\n--fp-error N         start N workers exercising floating point\
    \ errors\n--fp-error-ops N     stop after N fp-error bogo operations\n--fstat\
    \ N            start N workers exercising fstat on files\n--fstat-ops N      \
    \  stop after N fstat bogo operations\n--fstat-dir path     fstat files in the\
    \ specified directory\n--full N             start N workers exercising /dev/full\n\
    --full-ops N         stop after N /dev/full bogo I/O operations\n--funccall N\
    \         start N workers exercising 1 to 9 arg functions\n--funccall-ops N  \
    \   stop after N function call bogo operations\n--funccall-method M  select function\
    \ call method M\n--funcret N          start N workers exercising function return\
    \ copying\n--funcret-ops N      stop after N function return bogo operations\n\
    --funcret-method M   select method of exercising a function return type\n--futex\
    \ N            start N workers exercising a fast mutex\n--futex-ops N        stop\
    \ after N fast mutex bogo operations\n--get N              start N workers exercising\
    \ the get*() system calls\n--get-ops N          stop after N get bogo operations\n\
    --getdent N          start N workers reading directories using getdents\n--getdent-ops\
    \ N      stop after N getdents bogo operations\n--getrandom N        start N workers\
    \ fetching random data via getrandom()\n--getrandom-ops N    stop after N getrandom\
    \ bogo operations\n--handle N           start N workers exercising name_to_handle_at\n\
    --handle-ops N       stop after N handle bogo operations"
  type: long?
  inputBinding:
    prefix: --fork
- id: in_hdd
  doc: "start N workers spinning on write()/unlink()\n--hdd-ops N          stop after\
    \ N hdd bogo operations\n--hdd-bytes N        write N bytes per hdd worker (default\
    \ is 1GB)\n--hdd-opts list      specify list of various stressor options\n--hdd-write-size\
    \ N   set the default write size to N bytes\n--heapsort N         start N workers\
    \ heap sorting 32 bit random integers\n--heapsort-ops N     stop after N heap\
    \ sort bogo operations\n--heapsort-size N    number of 32 bit integers to sort\n\
    --hrtimers N         start N workers that exercise high resolution timers\n--hrtimers-ops\
    \ N     stop after N bogo high-res timer bogo operations\n--hsearch N        \
    \  start N workers that exercise a hash table search\n--hsearch-ops N      stop\
    \ after N hash search bogo operations\n--hsearch-size N     number of integers\
    \ to insert into hash table\n--icache N           start N CPU instruction cache\
    \ thrashing workers\n--icache-ops N       stop after N icache bogo operations\n\
    --icmp-flood N       start N ICMP packet flood workers\n--icmp-flood-ops N   stop\
    \ after N ICMP bogo operations (ICMP packets)\n--idle-page N        start N idle\
    \ page scanning workers\n--idle-page-ops N    stop after N idle page scan bogo\
    \ operations\n--inode-flags N      start N workers exercising various inode flags\n\
    --inode-flags-ops N  stop inode-flags workers after N bogo operations\n--inotify\
    \ N          start N workers exercising inotify events\n--inotify-ops N      stop\
    \ inotify workers after N bogo operations"
  type: long?
  inputBinding:
    prefix: --hdd
- id: in_io
  doc: "start N workers spinning on sync()\n--io-ops N           stop sync I/O after\
    \ N io bogo operations\n--iomix N            start N workers that have a mix of\
    \ I/O operations\n--iomix-bytes N      write N bytes per iomix worker (default\
    \ is 1GB)\n--iomix-ops N        stop iomix workers after N iomix bogo operations\n\
    --ioport N           start N workers exercising port I/O\n--ioport-ops N     \
    \  stop ioport workers after N port bogo operations\n--ioprio N           start\
    \ N workers exercising set/get iopriority\n--ioprio-ops N       stop after N io\
    \ bogo iopriority operations\n--io-uring N         start N workers that issue\
    \ io-uring I/O requests\n--io-uring-ops N     stop after N bogo io-uring I/O requests\n\
    --ipsec-mb N         start N workers exercising the IPSec MB encoding\n--ipsec-mb-ops\
    \ N     stop after N ipsec bogo encoding operations\n--ipsec-mb-feature F specify\
    \ CPU feature F\n--itimer N           start N workers exercising interval timers\n\
    --itimer-ops N       stop after N interval timer bogo operations\n--itimer-rand\
    \        enable random interval timer frequency\n--judy N             start N\
    \ workers that exercise a judy array search\n--judy-ops N         stop after N\
    \ judy array search bogo operations\n--judy-size N        number of 32 bit integers\
    \ to insert into judy array\n--kcmp N             start N workers exercising kcmp\n\
    --kcmp-ops N         stop after N kcmp bogo operations\n--key N              start\
    \ N workers exercising key operations\n--key-ops N          stop after N key bogo\
    \ operations\n--kill N             start N workers killing with SIGUSR1\n--kill-ops\
    \ N         stop after N kill bogo operations\n--klog N             start N workers\
    \ exercising kernel syslog interface\n--klog-ops N         stop after N klog bogo\
    \ operations\n--lease N            start N workers holding and breaking a lease\n\
    --lease-ops N        stop after N lease bogo operations\n--lease-breakers N  \
    \ number of lease breaking workers to start\n--link N             start N workers\
    \ creating hard links\n--link-ops N         stop after N link bogo operations\n\
    --locka N            start N workers locking a file via advisory locks\n--locka-ops\
    \ N        stop after N locka bogo operations\n--lockbus N          start N workers\
    \ locking a memory increment\n--lockbus-ops N      stop after N lockbus bogo operations\n\
    --lockf N            start N workers locking a single file via lockf\n--lockf-ops\
    \ N        stop after N lockf bogo operations\n--lockf-nonblock     don't block\
    \ if lock cannot be obtained, re-try\n--lockofd N          start N workers using\
    \ open file description locking\n--lockofd-ops N      stop after N lockofd bogo\
    \ operations\n--longjmp N          start N workers exercising setjmp/longjmp\n\
    --longjmp-ops N      stop after N longjmp bogo operations\n--loop N          \
    \   start N workers exercising loopback devices\n--loop-ops N         stop after\
    \ N bogo loopback operations\n--lsearch N          start N workers that exercise\
    \ a linear search\n--lsearch-ops N      stop after N linear search bogo operations\n\
    --lsearch-size N     number of 32 bit integers to lsearch\n--madvise N       \
    \   start N workers exercising madvise on memory\n--madvise-ops N      stop after\
    \ N bogo madvise operations\n--malloc N           start N workers exercising malloc/realloc/free\n\
    --malloc-bytes N     allocate up to N bytes per allocation\n--malloc-max N   \
    \    keep up to N allocations at a time\n--malloc-ops N       stop after N malloc\
    \ bogo operations\n--malloc-thresh N    threshold where malloc uses mmap instead\
    \ of sbrk\n--malloc-pthreads N  number of pthreads to run concurrently\n--matrix\
    \ N           start N workers exercising matrix operations\n--matrix-ops N   \
    \    stop after N maxtrix bogo operations\n--matrix-method M    specify matrix\
    \ stress method M, default is all\n--matrix-size N      specify the size of the\
    \ N x N matrix\n--matrix-yx          matrix operation is y by x instead of x by\
    \ y\n--matrix-3d N        start N workers exercising 3D matrix operations\n--matrix-3d-ops\
    \ N    stop after N 3D maxtrix bogo operations\n--matrix-3d-method M specify 3D\
    \ matrix stress method M, default is all\n--matrix-3d-size N   specify the size\
    \ of the N x N x N matrix\n--matrix-3d-zyx      matrix operation is z by y by\
    \ x instead of x by y by z\n--mcontend N         start N workers that produce\
    \ memory contention\n--mcontend-ops N     stop memory contention workers after\
    \ N bogo-ops\n--membarrier N       start N workers performing membarrier system\
    \ calls\n--membarrier-ops N   stop after N membarrier bogo operations\n--memcpy\
    \ N           start N workers performing memory copies\n--memcpy-ops N       stop\
    \ after N memcpy bogo operations\n--memcpy-method M    set memcpy method (M =\
    \ all, libc, builtin, naive)\n--memfd N            start N workers allocating\
    \ memory with memfd_create\n--memfd-bytes N      allocate N bytes for each stress\
    \ iteration\n--memfd-fds N        number of memory fds to open per stressors\n\
    --memfd-ops N        stop after N memfd bogo operations\n--memhotplug N      \
    \ start N workers that exercise memory hotplug\n--memhotplug-ops N   stop after\
    \ N memory hotplug operations\n--memrate N          start N workers exercised\
    \ memory read/writes\n--memrate-ops N      stop after N memrate bogo operations\n\
    --memrate-bytes N    size of memory buffer being exercised\n--memrate-rd-mbs N\
    \   read rate from buffer in megabytes per second\n--memrate-wr-mbs N   write\
    \ rate to buffer in megabytes per second\n--memthrash N        start N workers\
    \ thrashing a 16MB memory buffer\n--memthrash-ops N    stop after N memthrash\
    \ bogo operations\n--memthrash-method M specify memthrash method M, default is\
    \ all\n--mergesort N        start N workers merge sorting 32 bit random integers\n\
    --mergesort-ops N    stop after N merge sort bogo operations\n--mergesort-size\
    \ N   number of 32 bit integers to sort\n--mincore N          start N workers\
    \ exercising mincore\n--mincore-ops N      stop after N mincore bogo operations\n\
    --mincore-random     randomly select pages rather than linear scan\n--mknod N\
    \            start N workers that exercise mknod\n--mknod-ops N        stop after\
    \ N mknod bogo operations\n--mlock N            start N workers exercising mlock/munlock\n\
    --mlock-ops N        stop after N mlock bogo operations\n--mlockmany N       \
    \ start N workers exercising many mlock/munlock processes\n--mlockmany-ops N \
    \   stop after N mlockmany bogo operations\n--mmap N             start N workers\
    \ stressing mmap and munmap\n--mmap-ops N         stop after N mmap bogo operations\n\
    --mmap-async         using asynchronous msyncs for file based mmap\n--mmap-bytes\
    \ N       mmap and munmap N bytes for each stress iteration\n--mmap-file     \
    \     mmap onto a file using synchronous msyncs\n--mmap-mprotect      enable mmap\
    \ mprotect stressing\n--mmap-osync         enable O_SYNC on file\n--mmap-odirect\
    \       enable O_DIRECT on file\n--mmapaddr N         start N workers stressing\
    \ mmap with random addresses\n--mmapaddr-ops N     stop after N mmapaddr bogo\
    \ operations\n--mmapfixed N        start N workers stressing mmap with fixed mappings\n\
    --mmapfixed-ops N    stop after N mmapfixed bogo operations\n--mmapfork N    \
    \     start N workers stressing many forked mmaps/munmaps\n--mmapfork-ops N  \
    \   stop after N mmapfork bogo operations\n--mmapmany N         start N workers\
    \ stressing many mmaps and munmaps\n--mmapmany-ops N     stop after N mmapmany\
    \ bogo operations\n--mq N               start N workers passing messages using\
    \ POSIX messages\n--mq-ops N           stop mq workers after N bogo messages\n\
    --mq-size N          specify the size of the POSIX message queue\n--mremap N \
    \          start N workers stressing mremap\n--mremap-ops N       stop after N\
    \ mremap bogo operations\n--mremap-bytes N     mremap N bytes maximum for each\
    \ stress iteration\n--mremap-lock        mlock remap pages, force pages to be\
    \ unswappable\n--msg N              start N workers stressing System V messages\n\
    --msg-ops N          stop msg workers after N bogo messages\n--msg-types N   \
    \     enable N different message types\n--msync N            start N workers syncing\
    \ mmap'd data with msync\n--msync-ops N        stop msync workers after N bogo\
    \ msyncs\n--msync-bytes N      size of file and memory mapped region to msync\n\
    --nanosleep N        start N workers performing short sleeps\n--nanosleep-ops\
    \ N    stop after N bogo sleep operations\n--netdev N           start N workers\
    \ exercising netdevice ioctls\n--netdev-ops N       stop netdev workers after\
    \ N bogo operations\n--netlink-proc N     start N workers exercising netlink process\
    \ events\n--netlink-proc-ops N stop netlink-proc workers after N bogo events\n\
    --netlink-task N     start N workers exercising netlink tasks events\n--netlink-task-ops\
    \ N stop netlink-task workers after N bogo events\n--nice N             start\
    \ N workers that randomly re-adjust nice levels\n--nice-ops N         stop after\
    \ N nice bogo operations\n--nop N              start N workers that burn cycles\
    \ with no-ops\n--nop-ops N          stop after N nop bogo no-op operations\n--null\
    \ N             start N workers writing to /dev/null\n--null-ops N         stop\
    \ after N /dev/null bogo write operations\n--numa N             start N workers\
    \ stressing NUMA interfaces\n--numa-ops N         stop after N NUMA bogo operations\n\
    --oom-pipe N         start N workers exercising large pipes\n--oom-pipe-ops N\
    \     stop after N oom-pipe bogo operations\n--opcode N           start N workers\
    \ exercising random opcodes\n--opcode-ops N       stop after N opcode bogo operations\n\
    --opcode-method M    set opcode stress method (M = random, inc, mixed, text)"
  type: long?
  inputBinding:
    prefix: --io
- id: in_open
  doc: "start N workers exercising open/close\n--open-ops N         stop after N open/close\
    \ bogo operations\n--open-fd            open files in /proc/$pid/fd\n--personality\
    \ N      start N workers that change their personality\n--personality-ops N  stop\
    \ after N bogo personality calls\n--physpage N         start N workers performing\
    \ physical page lookup\n--physpage-ops N     stop after N physical page bogo operations\n\
    --pidfd N            start N workers exercising pidfd system call\n--pidfd-ops\
    \ N        stop after N pidfd bogo operations\n--ping-sock N        start N workers\
    \ that exercises a ping socket\n--ping-sock-ops N    stop after N ping sendto\
    \ messages"
  type: string?
  inputBinding:
    prefix: --open
- id: in_pipe
  doc: "start N workers exercising pipe I/O\n--pipe-ops N         stop after N pipe\
    \ I/O bogo operations\n--pipe-data-size N   set pipe size of each pipe write to\
    \ N bytes"
  type: long?
  inputBinding:
    prefix: --pipe
- id: in_pipe_herd
  doc: "start N multi-process workers exercising pipes I/O\n--pipeherd-ops N     stop\
    \ after N pipeherd I/O bogo operations\n--pipeherd-yield     force processes to\
    \ yield after each write\n--pkey N             start N workers exercising pkey_mprotect\n\
    --pkey-ops N         stop after N bogo pkey_mprotect bogo operations"
  type: string?
  inputBinding:
    prefix: --pipeherd
- id: in_poll
  doc: "start N workers exercising zero timeout polling\n--poll-ops N         stop\
    \ after N poll bogo operations\n--poll-fds N         use N file descriptors\n\
    --procfs N           start N workers reading portions of /proc\n--procfs-ops N\
    \       stop procfs workers after N bogo read operations\n--procfs N         \
    \  start N workers reading portions of /proc\n--procfs-ops N       stop procfs\
    \ workers after N bogo read operations\n--pthread N          start N workers that\
    \ create multiple threads\n--pthread-ops N      stop pthread workers after N bogo\
    \ threads created\n--pthread-max P      create P threads at a time by each worker\n\
    --ptrace N           start N workers that trace a child using ptrace\n--ptrace-ops\
    \ N       stop ptrace workers after N system calls are traced\n--pty N       \
    \       start N workers that exercise pseudoterminals\n--pty-ops N          stop\
    \ pty workers after N pty bogo operations\n--pty-max N          attempt to open\
    \ a maximum of N ptys"
  type: long?
  inputBinding:
    prefix: --poll
- id: in_qsort
  doc: "start N workers qsorting 32 bit random integers\n--qsort-ops N        stop\
    \ after N qsort bogo operations\n--qsort-size N       number of 32 bit integers\
    \ to sort\n--quota N            start N workers exercising quotactl commands\n\
    --quota-ops N        stop after N quotactl bogo operations\n--radixsort N    \
    \    start N workers radix sorting random strings\n--radixsort-ops N    stop after\
    \ N radixsort bogo operations\n--radixsort-size N   number of strings to sort\n\
    --ramfs N            start N workers exercising ramfs mounts\n--ramfs-ops N  \
    \      stop after N bogo ramfs mount operations\n--ramfs-bytes N      set the\
    \ ramfs size in bytes, e.g. 2M is 2MB\n--rawdev N           start N workers that\
    \ read a raw device\n--rawdev-ops N       stop after N rawdev read operations\n\
    --rawdev-method M    specify the rawdev reead method to use\n--rawpkt N      \
    \     start N workers exercising raw packets\n--rawpkt-ops N       stop after\
    \ N raw packet bogo operations\n--rawpkt-port P      use raw packet ports P to\
    \ P + number of workers - 1\n--rawsock N          start N workers performing raw\
    \ socket send/receives\n--rawsock-ops N      stop after N raw socket bogo operations\n\
    --rawudp N           start N workers exercising raw UDP socket I/O\n--rawudp-ops\
    \ N       stop after N raw socket UDP bogo operations\n--rawudp-port P      use\
    \ raw socket ports P to P + number of workers - 1\n--rdrand N           start\
    \ N workers exercising rdrand (x86 only)\n--rdrand-ops N       stop after N rdrand\
    \ bogo operations\n--readahead N        start N workers exercising file readahead\n\
    --readahead-bytes N  size of file to readahead on (default is 1GB)\n--readahead-ops\
    \ N    stop after N readahead bogo operations\n--reboot N           start N workers\
    \ that exercise bad reboot calls\n--reboot-ops N       stop after N bogo reboot\
    \ operations\n--remap N            start N workers exercising page remappings\n\
    --remap-ops N        stop after N remapping bogo operations"
  type: long?
  inputBinding:
    prefix: --qsort
- id: in_rename
  doc: "start N workers exercising file renames\n--rename-ops N       stop after N\
    \ rename bogo operations\n--resources N        start N workers consuming system\
    \ resources\n--resources-ops N    stop after N resource bogo operations\n--revio\
    \ N            start N workers performing reverse I/O\n--revio-ops N        stop\
    \ after N revio bogo operations\n--rmap N             start N workers that stress\
    \ reverse mappings\n--rmap-ops N         stop after N rmap bogo operations\n--rmap\
    \ N             start N workers that stress reverse mappings\n--rmap-ops N   \
    \      stop after N rmap bogo operations\n--rseq N             start N workers\
    \ that exercise restartable sequences\n--rseq-ops N         stop after N bogo\
    \ restartable sequence operations\n--rtc N              start N workers that exercise\
    \ the RTC interfaces\n--rtc-ops N          stop after N RTC bogo operations\n\
    --schedpolicy N      start N workers that exercise scheduling policy\n--schedpolicy-ops\
    \ N  stop after N scheduling policy bogo operations\n--sctp N             start\
    \ N workers performing SCTP send/receives\n--sctp-ops N         stop after N SCTP\
    \ bogo operations\n--sctp-domain D      specify sctp domain, default is ipv4\n\
    --sctp-port P        use SCTP ports P to P + number of workers - 1\n--sctp-sched\
    \ S       specify sctp scheduler\n--seal N             start N workers performing\
    \ fcntl SEAL commands\n--seal-ops N         stop after N SEAL bogo operations\n\
    --seccomp N          start N workers performing seccomp call filtering\n--seccomp-ops\
    \ N      stop after N seccomp bogo operations\n--secretmem N        start N workers\
    \ that use secretmem mappings\n--secretmem-ops N    stop after N secretmem bogo\
    \ operations\n--seek N             start N workers performing random seek r/w\
    \ IO\n--seek-ops N         stop after N seek bogo operations\n--seek-punch   \
    \      punch random holes in file to stress extents\n--seek-size N        length\
    \ of file to do random I/O upon\n--sem N              start N workers doing semaphore\
    \ operations\n--sem-ops N          stop after N semaphore bogo operations\n--sem-procs\
    \ N        number of processes to start per worker\n--sem-sysv N         start\
    \ N workers doing System V semaphore operations\n--sem-sysv-ops N     stop after\
    \ N System V sem bogo operations\n--sem-sysv-procs N   number of processes to\
    \ start per worker\n--sendfile N         start N workers exercising sendfile\n\
    --sendfile-ops N     stop after N bogo sendfile operations\n--sendfile-size N\
    \    size of data to be sent with sendfile"
  type: long?
  inputBinding:
    prefix: --rename
- id: in_session
  doc: "start N workers that exercise new sessions\n--session-ops N      stop after\
    \ N session bogo operations\n--set N              start N workers exercising the\
    \ set*() system calls\n--set-ops N          stop after N set bogo operations\n\
    --shellsort N        start N workers shell sorting 32 bit random integers\n--shellsort-ops\
    \ N    stop after N shell sort bogo operations\n--shellsort-size N   number of\
    \ 32 bit integers to sort\n--shm N              start N workers that exercise\
    \ POSIX shared memory\n--shm-ops N          stop after N POSIX shared memory bogo\
    \ operations\n--shm-bytes N        allocate/free N bytes of POSIX shared memory\n\
    --shm-segs N         allocate N POSIX shared memory segments per iteration\n--shm-sysv\
    \ N         start N workers that exercise System V shared memory\n--shm-sysv-ops\
    \ N     stop after N shared memory bogo operations\n--shm-sysv-bytes N   allocate\
    \ and free N bytes of shared memory per loop\n--shm-sysv-segs N    allocate N\
    \ shared memory segments per iteration\n--sigabrt N          start N workers generating\
    \ segmentation faults\n--sigabrt-ops N      stop after N bogo segmentation faults\n\
    --sigchld N          start N workers that handle SIGCHLD\n--sigchld-ops N    \
    \  stop after N bogo SIGCHLD signals\n--sigfd N            start N workers reading\
    \ signals via signalfd reads\n--sigfd-ops N        stop after N bogo signalfd\
    \ reads\n--sigfpe N           start N workers generating floating point math faults\n\
    --sigfpe-ops N       stop after N bogo floating point math faults\n--sigio N \
    \           start N workers that exercise SIGIO signals\n--sigio-ops N       \
    \ stop after N bogo sigio signals\n--signal N           start N workers that exercise\
    \ signal\n--signal-ops N       stop after N bogo signals\n--sigpending N     \
    \  start N workers exercising sigpending\n--sigpending-ops N   stop after N sigpending\
    \ bogo operations\n--sigpipe N          start N workers exercising SIGPIPE\n--sigpipe-ops\
    \ N      stop after N SIGPIPE bogo operations\n--sigq N             start N workers\
    \ sending sigqueue signals\n--sigq-ops N         stop after N sigqueue bogo operations\n\
    --sigrt N            start N workers sending real time signals\n--sigrt-ops N\
    \        stop after N real time signal bogo operations\n--sigsegv N          start\
    \ N workers generating segmentation faults\n--sigsegv-ops N      stop after N\
    \ bogo segmentation faults\n--sigsuspend N       start N workers exercising sigsuspend\n\
    --sigsuspend-ops N   stop after N bogo sigsuspend wakes\n--sigtrap N         \
    \ start N workers generating segmentation faults\n--sigtrap-ops N      stop after\
    \ N bogo segmentation faults\n--skiplist N         start N workers that exercise\
    \ a skiplist search\n--skiplist-ops N     stop after N skiplist search bogo operations\n\
    --skiplist-size N    number of 32 bit integers to add to skiplist\n--sleep N \
    \           start N workers performing various duration sleeps\n--sleep-ops N\
    \        stop after N bogo sleep operations\n--sleep-max P        create P threads\
    \ at a time by each worker"
  type: long?
  inputBinding:
    prefix: --session
- id: in_switch
  doc: "start N workers doing rapid context switches\n--switch-ops N       stop after\
    \ N context switch bogo operations\n--switch-freq N      set frequency of context\
    \ switches\n--symlink N          start N workers creating symbolic links\n--symlink-ops\
    \ N      stop after N symbolic link bogo operations\n--sync-file N        start\
    \ N workers exercise sync_file_range\n--sync-file-ops N    stop after N sync_file_range\
    \ bogo operations\n--sync-file-bytes N  size of file to be sync'd\n--sysbadaddr\
    \ N       start N workers that pass bad addresses to syscalls\n--sysbadaddr-ops\
    \ N   stop after N sysbadaddr bogo syscalls\n--sysinfo N          start N workers\
    \ reading system information\n--sysinfo-ops N      stop after sysinfo bogo operations\n\
    --sysinval N         start N workers that pass invalid args to syscalls\n--sysinval-ops\
    \ N     stop after N sysinval bogo syscalls\n--sysfs N            start N workers\
    \ reading files from /sys\n--sysfs-ops N        stop after sysfs bogo operations\n\
    --tee N              start N workers exercising the tee system call\n--tee-ops\
    \ N          stop after N tee bogo operations"
  type: long?
  inputBinding:
    prefix: --switch
- id: in_timer
  doc: "start N workers producing timer events\n--timer-ops N        stop after N\
    \ timer bogo events\n--timer-freq F       run timer(s) at F Hz, range 1 to 1000000000\n\
    --timer-rand         enable random timer frequency\n--timerfd N          start\
    \ N workers producing timerfd events\n--timerfd-ops N      stop after N timerfd\
    \ bogo events\n--timerfd-freq F     run timer(s) at F Hz, range 1 to 1000000000\n\
    --timerfd-rand       enable random timerfd frequency\n--tlb-shootdown N    start\
    \ N workers that force TLB shootdowns\n--tlb-shootdown-ops Nstop after N TLB shootdown\
    \ bogo ops\n--tmpfs N            start N workers mmap'ing a file on tmpfs\n--tmpfs-ops\
    \ N        stop after N tmpfs bogo ops\n--tmpfs-mmap-async   using asynchronous\
    \ msyncs for tmpfs file based mmap\n--tmpfs-mmap-file    mmap onto a tmpfs file\
    \ using synchronous msyncs\n--tree N             start N workers that exercise\
    \ tree structures\n--tree-ops N         stop after N bogo tree operations\n--tree-method\
    \ M      select tree method, all,avl,binary,rb,splay\n--tree-size N        N is\
    \ the number of items in the tree\n--tsc N              start N workers reading\
    \ the time stamp counter\n--tsc-ops N          stop after N TSC bogo operations\n\
    --tsearch N          start N workers that exercise a tree search\n--tsearch-ops\
    \ N      stop after N tree search bogo operations\n--tsearch-size N     number\
    \ of 32 bit integers to tsearch\n--tun N              start N workers exercising\
    \ tun interface\n--tun-ops N          stop after N tun bogo operations\n--tun-tap\
    \            use TAP interface instead of TUN\n--udp N              start N workers\
    \ performing UDP send/receives\n--udp-ops N          stop after N udp bogo operations\n\
    --udp-domain D       specify domain, default is ipv4\n--udp-lite           use\
    \ the UDP-Lite (RFC 3828) protocol\n--udp-port P         use ports P to P + number\
    \ of workers - 1\n--udp-flood N        start N workers that performs a UDP flood\
    \ attack\n--udp-flood-ops N    stop after N udp flood bogo operations\n--udp-flood-domain\
    \ D specify domain, default is ipv4\n--unshare N          start N workers exercising\
    \ resource unsharing\n--unshare-ops N      stop after N bogo unshare operations\n\
    --uprobe N           start N workers that generate uprobe events\n--uprobe-ops\
    \ N       stop after N uprobe events"
  type: long?
  inputBinding:
    prefix: --timer
- id: in_urandom
  doc: "start N workers reading /dev/urandom\n--urandom-ops N      stop after N urandom\
    \ bogo read operations\n--userfaultfd N      start N page faulting workers with\
    \ userspace handling\n--userfaultfd-ops N  stop after N page faults have been\
    \ handled\n--utime N            start N workers updating file timestamps\n--utime-ops\
    \ N        stop after N utime bogo operations\n--utime-fsync        force utime\
    \ meta data sync to the file system\n--vdso N             start N workers exercising\
    \ functions in the VDSO\n--vdso-ops N         stop after N vDSO function calls\n\
    --vdso-func F        use just vDSO function F\n--vecmath N          start N workers\
    \ performing vector math ops\n--vecmath-ops N      stop after N vector math bogo\
    \ operations\n--verity N           start N workers exercising file verity ioctls\n\
    --verity-ops N       stop after N file verity bogo operations\n--vfork N     \
    \       start N workers spinning on vfork() and exit()\n--vfork-ops N        stop\
    \ after N vfork bogo operations\n--vfork-max P        create P processes per iteration,\
    \ default is 1\n--vforkmany N        start N workers spawning many vfork children\n\
    --vforkmany-ops N    stop after spawning N vfork children"
  type: long?
  inputBinding:
    prefix: --urandom
- id: in_vm
  doc: "start N workers spinning on anonymous mmap\n--vm-bytes N         allocate\
    \ N bytes per vm worker (default 256MB)\n--vm-hang N          sleep N seconds\
    \ before freeing memory\n--vm-keep            redirty memory instead of reallocating\n\
    --vm-ops N           stop after N vm bogo operations\n--vm-locked          lock\
    \ the pages of the mapped region into memory\n--vm-madvise M       specify mmap'd\
    \ vm buffer madvise advice\n--vm-method M        specify stress vm method M, default\
    \ is all\n--vm-populate        populate (prefault) page tables for a mapping\n\
    --vm-addr N          start N vm address exercising workers\n--vm-addr-ops N  \
    \    stop after N vm address bogo operations\n--vm-rw N            start N vm\
    \ read/write process_vm* copy workers\n--vm-rw-bytes N      transfer N bytes of\
    \ memory per bogo operation\n--vm-rw-ops N        stop after N vm process_vm*\
    \ copy bogo operations\n--vm-segv N          start N workers that unmap their\
    \ address space\n--vm-segv-ops N      stop after N vm-segv unmap'd SEGV faults\n\
    --vm-splice N        start N workers reading/writing using vmsplice\n--vm-splice-ops\
    \ N    stop after N bogo splice operations\n--vm-splice-bytes N  number of bytes\
    \ to transfer per vmsplice call\n--wait N             start N workers waiting\
    \ on child being stop/resumed\n--wait-ops N         stop after N bogo wait operations\n\
    --watchdog N         start N workers that exercise /dev/watchdog\n--watchdog-ops\
    \ N     stop after N bogo watchdog operations\n--wcs N              start N workers\
    \ on lib C wide char string functions\n--wcs-method func    specify the wide character\
    \ string function to stress\n--wcs-ops N          stop after N bogo wide character\
    \ string operations\n--x86syscall N       start N workers exercising functions\
    \ using syscall\n--x86syscall-ops N   stop after N syscall function calls\n--x86syscall-func\
    \ F  use just syscall function F\n--xattr N            start N workers stressing\
    \ file extended attributes\n--xattr-ops N        stop after N bogo xattr operations"
  type: long?
  inputBinding:
    prefix: --vm
- id: in_yield
  doc: "start N workers doing sched_yield() calls\n--yield-ops N        stop after\
    \ N bogo yield operations\n--zero N             start N workers reading /dev/zero\n\
    --zero-ops N         stop after N /dev/zero bogo read operations\n--zlib N   \
    \          start N workers compressing data with zlib\n--zlib-level L       specify\
    \ zlib compression level 0=fast, 9=best\n--zlib-mem-level L   specify zlib compression\
    \ state memory usage 1=minimum, 9=maximum\n--zlib-method M      specify zlib random\
    \ data generation method M\n--zlib-ops N         stop after N zlib bogo compression\
    \ operations\n--zlib-strategy S    specify zlib strategy 0=default, 1=filtered,\
    \ 2=huffman only, 3=rle, 4=fixed\n--zlib-stream-bytes Sspecify the number of bytes\
    \ to deflate until the current stream will be closed\n--zlib-window-bits W specify\
    \ zlib window bits -8-(-15) | 8-15 | 24-31 | 40-47\n--zombie N           start\
    \ N workers that rapidly create and reap zombies\n--zombie-ops N       stop after\
    \ N bogo zombie fork operations\n--zombie-max N       set upper limit of N zombies\
    \ per worker"
  type: long?
  inputBinding:
    prefix: --yield
- id: in_arg
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stress-ng:0.12.04
cwlVersion: v1.1
baseCommand:
- stress-ng
