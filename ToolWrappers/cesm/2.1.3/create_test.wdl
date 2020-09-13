version 1.0

task CreateTest {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    Boolean? no_run
    Boolean? no_build
    Boolean? no_setup
    Boolean? use_existing
    Boolean? save_timing
    Boolean? no_batch
    Boolean? single_submit
    File? test_root
    String? output_root
    Directory? baseline_root
    Boolean? clean
    File? machine
    String? mpi_lib
    Directory? baseline_name
    Boolean? compare
    Boolean? generate
    String? compiler
    Boolean? name_lists_only
    String? project
    File? test_id
    Int? parallel_jobs
    Int? proc_pool
    String? wall_time
    String? queue
    File? test_file
    Boolean? allow_baseline_overwrite
    Boolean? wait
    Boolean? wait_check_throughput
    Boolean? wait_check_memory
    Boolean? wait_ignore_name_lists
    Boolean? wait_ignore_memleak
    Int? force_procs
    Int? force_threads
    String? input_dir
    File? pes_file
    Int? retry
    String? mail_user
    String? mail_type
    String test_args
  }
  command <<<
    create_test \
      ~{test_args} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (no_run) then "--no-run" else ""} \
      ~{if (no_build) then "--no-build" else ""} \
      ~{if (no_setup) then "--no-setup" else ""} \
      ~{if (use_existing) then "--use-existing" else ""} \
      ~{if (save_timing) then "--save-timing" else ""} \
      ~{if (no_batch) then "--no-batch" else ""} \
      ~{if (single_submit) then "--single-submit" else ""} \
      ~{if defined(test_root) then ("--test-root " +  '"' + test_root + '"') else ""} \
      ~{if defined(output_root) then ("--output-root " +  '"' + output_root + '"') else ""} \
      ~{if defined(baseline_root) then ("--baseline-root " +  '"' + baseline_root + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(machine) then ("--machine " +  '"' + machine + '"') else ""} \
      ~{if defined(mpi_lib) then ("--mpilib " +  '"' + mpi_lib + '"') else ""} \
      ~{if defined(baseline_name) then ("--baseline-name " +  '"' + baseline_name + '"') else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if (generate) then "--generate" else ""} \
      ~{if defined(compiler) then ("--compiler " +  '"' + compiler + '"') else ""} \
      ~{if (name_lists_only) then "--namelists-only" else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(test_id) then ("--test-id " +  '"' + test_id + '"') else ""} \
      ~{if defined(parallel_jobs) then ("--parallel-jobs " +  '"' + parallel_jobs + '"') else ""} \
      ~{if defined(proc_pool) then ("--proc-pool " +  '"' + proc_pool + '"') else ""} \
      ~{if defined(wall_time) then ("--walltime " +  '"' + wall_time + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(test_file) then ("--testfile " +  '"' + test_file + '"') else ""} \
      ~{if (allow_baseline_overwrite) then "--allow-baseline-overwrite" else ""} \
      ~{if (wait) then "--wait" else ""} \
      ~{if (wait_check_throughput) then "--wait-check-throughput" else ""} \
      ~{if (wait_check_memory) then "--wait-check-memory" else ""} \
      ~{if (wait_ignore_name_lists) then "--wait-ignore-namelists" else ""} \
      ~{if (wait_ignore_memleak) then "--wait-ignore-memleak" else ""} \
      ~{if defined(force_procs) then ("--force-procs " +  '"' + force_procs + '"') else ""} \
      ~{if defined(force_threads) then ("--force-threads " +  '"' + force_threads + '"') else ""} \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(pes_file) then ("--pesfile " +  '"' + pes_file + '"') else ""} \
      ~{if defined(retry) then ("--retry " +  '"' + retry + '"') else ""} \
      ~{if defined(mail_user) then ("--mail-user " +  '"' + mail_user + '"') else ""} \
      ~{if defined(mail_type) then ("--mail-type " +  '"' + mail_type + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debug information (very verbose) to file /create_test.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    no_run: "Do not run generated tests"
    no_build: "Do not build generated tests, implies --no-run"
    no_setup: "Do not setup generated tests, implies --no-build and --no-run"
    use_existing: "Use pre-existing case directories they will pick up at the\\nlatest PEND state or re-run the first failed state. Requires test-id"
    save_timing: "Enable archiving of performance data."
    no_batch: "Do not submit jobs to batch system, run locally.\\nIf false, this will default to machine setting."
    single_submit: "Use a single interactive allocation to run all the tests. This can\\ndrastically reduce queue waiting but only makes sense on batch machines."
    test_root: "Where test cases will be created. The default is output root\\nas defined in the config_machines file"
    output_root: "Where the case output is written."
    baseline_root: "Specifies a root directory for baseline datasets that will\\nbe used for Bit-for-bit generate and/or compare testing."
    clean: "Specifies if tests should be cleaned after run. If set, all object\\nexecutables and data files will be removed after the tests are run."
    machine: "The machine for creating and building tests. This machine must be defined\\nin the config_machines.xml file for the given model. The default is to\\nto match the name of the machine in the test name or the name of the\\nmachine this script is run on to the NODENAME_REGEX field in\\nconfig_machines.xml. WARNING: This option is highly unsafe and should\\nonly be used if you are an expert."
    mpi_lib: "Specify the mpilib. To see list of supported MPI libraries for each machine,\\ninvoke ./query_config. The default is the first listing ."
    baseline_name: "If comparing or generating baselines, use this directory under baseline root.\\nDefault will be current branch name."
    compare: "While testing, compare baselines"
    generate: "While testing, generate baselines.\\nNOTE: this can also be done after the fact with bless_test_results"
    compiler: "Compiler for building cime. Default will be the name in the\\nTestname or the default defined for the machine."
    name_lists_only: "Only perform namelist actions for tests"
    project: "Specify a project id for the case (optional).\\nUsed for accounting when on a batch system.\\nThe default is user-specified environment variable PROJECT"
    test_id: "Specify an 'id' for the test. This is simply a string that is appended\\nto the end of a test name. If no test-id is specified, a time stamp plus a\\nrandom string will be used (ensuring a high probability of uniqueness).\\nIf a test-id is specified, it is the user's responsibility to ensure that\\neach run of create_test uses a unique test-id. WARNING: problems will occur\\nif you use the same test-id twice on the same file system, even if the test\\nlists are completely different."
    parallel_jobs: "Number of tasks create_test should perform simultaneously. The default\\nis min(num_cores, num_tests)."
    proc_pool: "The size of the processor pool that create_test can use. The default is\\nMAX_MPITASKS_PER_NODE + 25 percent."
    wall_time: "Set the wallclock limit for all tests in the suite.\\nUse the variable CIME_GLOBAL_WALLTIME to set this for all tests."
    queue: "Force batch system to use a certain queue"
    test_file: "A file containing an ascii list of tests to run"
    allow_baseline_overwrite: "If the --generate option is given, then an attempt to overwrite\\nan existing baseline directory will raise an error. WARNING: Specifying this\\noption will allow existing baseline directories to be silently overwritten."
    wait: "On batch systems, wait for submitted jobs to complete"
    wait_check_throughput: "If waiting, fail if throughput check fails"
    wait_check_memory: "If waiting, fail if memory check fails"
    wait_ignore_name_lists: "If waiting, ignore if namelist diffs"
    wait_ignore_memleak: "If waiting, ignore if there's a memleak"
    force_procs: "For all tests to run with this number of processors"
    force_threads: "For all tests to run with this number of threads"
    input_dir: "Use a non-default location for input files"
    pes_file: "Full pathname of an optional pes specification file. The file\\ncan follow either the config_pes.xml or the env_mach_pes.xml format."
    retry: "Automatically retry failed tests. >0 implies --wait"
    mail_user: "Email to be used for batch notification."
    mail_type: "When to send user email. Options are: never, all, begin, end, fail.\\nYou can specify multiple types with either comma-separated args or multiple -M flags.\\n"
    test_args: "Tests or test suites to run. Testname form is TEST.GRID.COMPSET[.MACHINE_COMPILER]"
  }
  output {
    File out_stdout = stdout()
    File out_test_root = "${in_test_root}"
  }
}