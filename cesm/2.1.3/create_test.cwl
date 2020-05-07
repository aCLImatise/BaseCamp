class: CommandLineTool
id: create_test.cwl
inputs:
- id: test_args
  doc: Tests or test suites to run. Testname form is TEST.GRID.COMPSET[.MACHINE_COMPILER]
  type: string
  inputBinding:
    position: 0
- id: debug
  doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/create_test.log
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Add additional context (time and file) to log messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: silent
  doc: Print only warnings and error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: no_run
  doc: Do not run generated tests
  type: boolean
  inputBinding:
    prefix: --no-run
- id: no_build
  doc: Do not build generated tests, implies --no-run
  type: boolean
  inputBinding:
    prefix: --no-build
- id: no_setup
  doc: Do not setup generated tests, implies --no-build and --no-run
  type: boolean
  inputBinding:
    prefix: --no-setup
- id: use_existing
  doc: Use pre-existing case directories they will pick up at the  latest PEND state
    or re-run the first failed state. Requires test-id
  type: boolean
  inputBinding:
    prefix: --use-existing
- id: save_timing
  doc: Enable archiving of performance data.
  type: boolean
  inputBinding:
    prefix: --save-timing
- id: no_batch
  doc: Do not submit jobs to batch system, run locally. If false, this will default
    to machine setting.
  type: boolean
  inputBinding:
    prefix: --no-batch
- id: single_submit
  doc: Use a single interactive allocation to run all the tests. This can  drastically
    reduce queue waiting but only makes sense on batch machines.
  type: boolean
  inputBinding:
    prefix: --single-submit
- id: test_root
  doc: Where test cases will be created. The default is output root as defined in
    the config_machines file
  type: string
  inputBinding:
    prefix: --test-root
- id: output_root
  doc: Where the case output is written.
  type: string
  inputBinding:
    prefix: --output-root
- id: baseline_root
  doc: Specifies a root directory for baseline datasets that will  be used for Bit-for-bit
    generate and/or compare testing.
  type: string
  inputBinding:
    prefix: --baseline-root
- id: clean
  doc: Specifies if tests should be cleaned after run. If set, all object executables
    and data files will be removed after the tests are run.
  type: boolean
  inputBinding:
    prefix: --clean
- id: machine
  doc: 'The machine for creating and building tests. This machine must be defined
    in the config_machines.xml file for the given model. The default is to  to match
    the name of the machine in the test name or the name of the  machine this script
    is run on to the NODENAME_REGEX field in  config_machines.xml. WARNING: This option
    is highly unsafe and should  only be used if you are an expert.'
  type: string
  inputBinding:
    prefix: --machine
- id: mpi_lib
  doc: Specify the mpilib. To see list of supported MPI libraries for each machine,  invoke
    ./query_config. The default is the first listing .
  type: string
  inputBinding:
    prefix: --mpilib
- id: baseline_name
  doc: If comparing or generating baselines, use this directory under baseline root.  Default
    will be current branch name.
  type: string
  inputBinding:
    prefix: --baseline-name
- id: compare
  doc: While testing, compare baselines
  type: boolean
  inputBinding:
    prefix: --compare
- id: generate
  doc: 'While testing, generate baselines.  NOTE: this can also be done after the
    fact with bless_test_results'
  type: boolean
  inputBinding:
    prefix: --generate
- id: compiler
  doc: Compiler for building cime. Default will be the name in the  Testname or the
    default defined for the machine.
  type: string
  inputBinding:
    prefix: --compiler
- id: name_lists_only
  doc: Only perform namelist actions for tests
  type: boolean
  inputBinding:
    prefix: --namelists-only
- id: project
  doc: Specify a project id for the case (optional). Used for accounting when on a
    batch system. The default is user-specified environment variable PROJECT
  type: string
  inputBinding:
    prefix: --project
- id: test_id
  doc: "Specify an 'id' for the test. This is simply a string that is appended  to\
    \ the end of a test name. If no test-id is specified, a time stamp plus a  random\
    \ string will be used (ensuring a high probability of uniqueness).  If a test-id\
    \ is specified, it is the user's responsibility to ensure that  each run of create_test\
    \ uses a unique test-id. WARNING: problems will occur  if you use the same test-id\
    \ twice on the same file system, even if the test  lists are completely different."
  type: string
  inputBinding:
    prefix: --test-id
- id: parallel_jobs
  doc: Number of tasks create_test should perform simultaneously. The default  is
    min(num_cores, num_tests).
  type: string
  inputBinding:
    prefix: --parallel-jobs
- id: proc_pool
  doc: The size of the processor pool that create_test can use. The default is  MAX_MPITASKS_PER_NODE
    + 25 percent.
  type: string
  inputBinding:
    prefix: --proc-pool
- id: wall_time
  doc: Set the wallclock limit for all tests in the suite.  Use the variable CIME_GLOBAL_WALLTIME
    to set this for all tests.
  type: string
  inputBinding:
    prefix: --walltime
- id: queue
  doc: Force batch system to use a certain queue
  type: string
  inputBinding:
    prefix: --queue
- id: test_file
  doc: A file containing an ascii list of tests to run
  type: string
  inputBinding:
    prefix: --testfile
- id: allow_baseline_overwrite
  doc: 'If the --generate option is given, then an attempt to overwrite  an existing
    baseline directory will raise an error. WARNING: Specifying this  option will
    allow existing baseline directories to be silently overwritten.'
  type: boolean
  inputBinding:
    prefix: --allow-baseline-overwrite
- id: wait
  doc: On batch systems, wait for submitted jobs to complete
  type: boolean
  inputBinding:
    prefix: --wait
- id: wait_check_throughput
  doc: If waiting, fail if throughput check fails
  type: boolean
  inputBinding:
    prefix: --wait-check-throughput
- id: wait_check_memory
  doc: If waiting, fail if memory check fails
  type: boolean
  inputBinding:
    prefix: --wait-check-memory
- id: wait_ignore_name_lists
  doc: If waiting, ignore if namelist diffs
  type: boolean
  inputBinding:
    prefix: --wait-ignore-namelists
- id: wait_ignore_memleak
  doc: If waiting, ignore if there's a memleak
  type: boolean
  inputBinding:
    prefix: --wait-ignore-memleak
- id: force_procs
  doc: For all tests to run with this number of processors
  type: string
  inputBinding:
    prefix: --force-procs
- id: force_threads
  doc: For all tests to run with this number of threads
  type: string
  inputBinding:
    prefix: --force-threads
- id: input_dir
  doc: Use a non-default location for input files
  type: string
  inputBinding:
    prefix: --input-dir
- id: pes_file
  doc: Full pathname of an optional pes specification file. The file can follow either
    the config_pes.xml or the env_mach_pes.xml format.
  type: string
  inputBinding:
    prefix: --pesfile
- id: retry
  doc: Automatically retry failed tests. >0 implies --wait
  type: string
  inputBinding:
    prefix: --retry
- id: mail_user
  doc: Email to be used for batch notification.
  type: string
  inputBinding:
    prefix: --mail-user
- id: mail_type
  doc: 'When to send user email. Options are: never, all, begin, end, fail. You can
    specify multiple types with either comma-separated args or multiple -M flags.'
  type: string
  inputBinding:
    prefix: --mail-type
outputs: []
cwlVersion: v1.1
baseCommand:
- create_test
