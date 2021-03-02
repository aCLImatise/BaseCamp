class: CommandLineTool
id: create_test.cwl
inputs:
- id: in_debug
  doc: Print debug information (very verbose) to file /create_test.log
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Add additional context (time and file) to log messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Print only warnings and error messages
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_no_run
  doc: Do not run generated tests
  type: boolean?
  inputBinding:
    prefix: --no-run
- id: in_no_build
  doc: Do not build generated tests, implies --no-run
  type: boolean?
  inputBinding:
    prefix: --no-build
- id: in_no_setup
  doc: Do not setup generated tests, implies --no-build and --no-run
  type: boolean?
  inputBinding:
    prefix: --no-setup
- id: in_use_existing
  doc: "Use pre-existing case directories they will pick up at the\nlatest PEND state\
    \ or re-run the first failed state. Requires test-id"
  type: boolean?
  inputBinding:
    prefix: --use-existing
- id: in_save_timing
  doc: Enable archiving of performance data.
  type: boolean?
  inputBinding:
    prefix: --save-timing
- id: in_no_batch
  doc: "Do not submit jobs to batch system, run locally.\nIf false, this will default\
    \ to machine setting."
  type: boolean?
  inputBinding:
    prefix: --no-batch
- id: in_single_exe
  doc: "Use a single build for all cases. This can\ndrastically improve test throughput\
    \ but is currently use-at-your-own risk.\nIt's up to the user to ensure that all\
    \ cases are build-compatible.\nE3SM tests belonging to a suite with share enabled\
    \ will always share exes."
  type: boolean?
  inputBinding:
    prefix: --single-exe
- id: in_single_submit
  doc: "Use a single interactive allocation to run all the tests. This can\ndrastically\
    \ reduce queue waiting but only makes sense on batch machines."
  type: boolean?
  inputBinding:
    prefix: --single-submit
- id: in_test_root
  doc: "Where test cases will be created. The default is output root\nas defined in\
    \ the config_machines file"
  type: File?
  inputBinding:
    prefix: --test-root
- id: in_output_root
  doc: Where the case output is written.
  type: string?
  inputBinding:
    prefix: --output-root
- id: in_baseline_root
  doc: "Specifies a root directory for baseline datasets that will\nbe used for Bit-for-bit\
    \ generate and/or compare testing."
  type: Directory?
  inputBinding:
    prefix: --baseline-root
- id: in_clean
  doc: "Specifies if tests should be cleaned after run. If set, all object\nexecutables\
    \ and data files will be removed after the tests are run."
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_machine
  doc: "The machine for creating and building tests. This machine must be defined\n\
    in the config_machines.xml file for the given model. The default is to\nto match\
    \ the name of the machine in the test name or the name of the\nmachine this script\
    \ is run on to the NODENAME_REGEX field in\nconfig_machines.xml. WARNING: This\
    \ option is highly unsafe and should\nonly be used if you are an expert."
  type: File?
  inputBinding:
    prefix: --machine
- id: in_mpi_lib
  doc: "Specify the mpilib. To see list of supported MPI libraries for each machine,\n\
    invoke ./query_config. The default is the first listing ."
  type: string?
  inputBinding:
    prefix: --mpilib
- id: in_baseline_name
  doc: "If comparing or generating baselines, use this directory under baseline root.\n\
    Default will be current branch name."
  type: Directory?
  inputBinding:
    prefix: --baseline-name
- id: in_compare
  doc: While testing, compare baselines
  type: boolean?
  inputBinding:
    prefix: --compare
- id: in_generate
  doc: "While testing, generate baselines.\nNOTE: this can also be done after the\
    \ fact with bless_test_results"
  type: boolean?
  inputBinding:
    prefix: --generate
- id: in_compiler
  doc: "Compiler for building cime. Default will be the name in the\nTestname or the\
    \ default defined for the machine."
  type: string?
  inputBinding:
    prefix: --compiler
- id: in_name_lists_only
  doc: Only perform namelist actions for tests
  type: boolean?
  inputBinding:
    prefix: --namelists-only
- id: in_project
  doc: "Specify a project id for the case (optional).\nUsed for accounting and directory\
    \ permissions when on a batch system.\nThe default is user or machine specified\
    \ by PROJECT.\nAccounting (only) may be overridden by user or machine specified\
    \ CHARGE_ACCOUNT."
  type: Directory?
  inputBinding:
    prefix: --project
- id: in_test_id
  doc: "Specify an 'id' for the test. This is simply a string that is appended\nto\
    \ the end of a test name. If no test-id is specified, a time stamp plus a\nrandom\
    \ string will be used (ensuring a high probability of uniqueness).\nIf a test-id\
    \ is specified, it is the user's responsibility to ensure that\neach run of create_test\
    \ uses a unique test-id. WARNING: problems will occur\nif you use the same test-id\
    \ twice on the same file system, even if the test\nlists are completely different."
  type: File?
  inputBinding:
    prefix: --test-id
- id: in_parallel_jobs
  doc: "Number of tasks create_test should perform simultaneously. The default\nis\
    \ min(num_cores, num_tests)."
  type: long?
  inputBinding:
    prefix: --parallel-jobs
- id: in_proc_pool
  doc: "The size of the processor pool that create_test can use. The default is\n\
    MAX_MPITASKS_PER_NODE + 25 percent."
  type: long?
  inputBinding:
    prefix: --proc-pool
- id: in_wall_time
  doc: "Set the wallclock limit for all tests in the suite.\nUse the variable CIME_GLOBAL_WALLTIME\
    \ to set this for all tests."
  type: string?
  inputBinding:
    prefix: --walltime
- id: in_queue
  doc: Force batch system to use a certain queue
  type: string?
  inputBinding:
    prefix: --queue
- id: in_test_file
  doc: A file containing an ascii list of tests to run
  type: File?
  inputBinding:
    prefix: --testfile
- id: in_allow_baseline_overwrite
  doc: "If the --generate option is given, then an attempt to overwrite\nan existing\
    \ baseline directory will raise an error. WARNING: Specifying this\noption will\
    \ allow existing baseline directories to be silently overwritten."
  type: boolean?
  inputBinding:
    prefix: --allow-baseline-overwrite
- id: in_wait
  doc: On batch systems, wait for submitted jobs to complete
  type: boolean?
  inputBinding:
    prefix: --wait
- id: in_allow_pnl
  doc: Do not pass skip-pnl to case.submit
  type: boolean?
  inputBinding:
    prefix: --allow-pnl
- id: in_wait_check_throughput
  doc: If waiting, fail if throughput check fails
  type: boolean?
  inputBinding:
    prefix: --wait-check-throughput
- id: in_wait_check_memory
  doc: If waiting, fail if memory check fails
  type: boolean?
  inputBinding:
    prefix: --wait-check-memory
- id: in_wait_ignore_name_lists
  doc: If waiting, ignore if namelist diffs
  type: boolean?
  inputBinding:
    prefix: --wait-ignore-namelists
- id: in_wait_ignore_memleak
  doc: If waiting, ignore if there's a memleak
  type: boolean?
  inputBinding:
    prefix: --wait-ignore-memleak
- id: in_force_procs
  doc: For all tests to run with this number of processors
  type: long?
  inputBinding:
    prefix: --force-procs
- id: in_force_threads
  doc: For all tests to run with this number of threads
  type: long?
  inputBinding:
    prefix: --force-threads
- id: in_input_dir
  doc: Use a non-default location for input files
  type: string?
  inputBinding:
    prefix: --input-dir
- id: in_pes_file
  doc: "Full pathname of an optional pes specification file. The file\ncan follow\
    \ either the config_pes.xml or the env_mach_pes.xml format."
  type: File?
  inputBinding:
    prefix: --pesfile
- id: in_retry
  doc: Automatically retry failed tests. >0 implies --wait
  type: long?
  inputBinding:
    prefix: --retry
- id: in_non_local
  doc: Use when you've requested a machine that you aren't on. Will reduce errors
    for missing directories etc.
  type: boolean?
  inputBinding:
    prefix: --non-local
- id: in_workflow
  doc: A workflow from config_workflow.xml to apply to this case.
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_mail_user
  doc: Email to be used for batch notification.
  type: string?
  inputBinding:
    prefix: --mail-user
- id: in_mail_type
  doc: "When to send user email. Options are: never, all, begin, end, fail.\nYou can\
    \ specify multiple types with either comma-separated args or multiple -M flags.\n"
  type: string?
  inputBinding:
    prefix: --mail-type
- id: in_test_args
  doc: Tests or test suites to run. Testname form is TEST.GRID.COMPSET[.MACHINE_COMPILER]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_test_root
  doc: "Where test cases will be created. The default is output root\nas defined in\
    \ the config_machines file"
  type: File?
  outputBinding:
    glob: $(inputs.in_test_root)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fates-emerald:2.0.1
cwlVersion: v1.1
baseCommand:
- create_test
