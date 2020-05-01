#!/usr/bin/env cwl-runner

baseCommand:
- create_test
class: CommandLineTool
cwlVersion: v1.0
id: create_test
inputs:
- doc: Tests or test suites to run. Testname form is TEST.GRID.COMPSET[.MACHINE_COMPILER]
  id: test_args
  inputBinding:
    position: 0
  type: string
- doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/create_test.log
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Add additional context (time and file) to log messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print only warnings and error messages
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: Do not run generated tests
  id: no_run
  inputBinding:
    prefix: --no-run
  type: boolean
- doc: Do not build generated tests, implies --no-run
  id: no_build
  inputBinding:
    prefix: --no-build
  type: boolean
- doc: Do not setup generated tests, implies --no-build and --no-run
  id: no_setup
  inputBinding:
    prefix: --no-setup
  type: boolean
- doc: Use pre-existing case directories they will pick up at the  latest PEND state
    or re-run the first failed state. Requires test-id
  id: use_existing
  inputBinding:
    prefix: --use-existing
  type: boolean
- doc: Enable archiving of performance data.
  id: save_timing
  inputBinding:
    prefix: --save-timing
  type: boolean
- doc: Do not submit jobs to batch system, run locally. If false, this will default
    to machine setting.
  id: no_batch
  inputBinding:
    prefix: --no-batch
  type: boolean
- doc: Use a single interactive allocation to run all the tests. This can  drastically
    reduce queue waiting but only makes sense on batch machines.
  id: single_submit
  inputBinding:
    prefix: --single-submit
  type: boolean
- doc: Where test cases will be created. The default is output root as defined in
    the config_machines file
  id: test_root
  inputBinding:
    prefix: --test-root
  type: string
- doc: Where the case output is written.
  id: output_root
  inputBinding:
    prefix: --output-root
  type: string
- doc: Specifies a root directory for baseline datasets that will  be used for Bit-for-bit
    generate and/or compare testing.
  id: baseline_root
  inputBinding:
    prefix: --baseline-root
  type: string
- doc: Specifies if tests should be cleaned after run. If set, all object executables
    and data files will be removed after the tests are run.
  id: clean
  inputBinding:
    prefix: --clean
  type: boolean
- doc: 'The machine for creating and building tests. This machine must be defined
    in the config_machines.xml file for the given model. The default is to  to match
    the name of the machine in the test name or the name of the  machine this script
    is run on to the NODENAME_REGEX field in  config_machines.xml. WARNING: This option
    is highly unsafe and should  only be used if you are an expert.'
  id: machine
  inputBinding:
    prefix: --machine
  type: string
- doc: Specify the mpilib. To see list of supported MPI libraries for each machine,  invoke
    ./query_config. The default is the first listing .
  id: mpi_lib
  inputBinding:
    prefix: --mpilib
  type: string
- doc: If comparing or generating baselines, use this directory under baseline root.  Default
    will be current branch name.
  id: baseline_name
  inputBinding:
    prefix: --baseline-name
  type: string
- doc: While testing, compare baselines
  id: compare
  inputBinding:
    prefix: --compare
  type: boolean
- doc: 'While testing, generate baselines.  NOTE: this can also be done after the
    fact with bless_test_results'
  id: generate
  inputBinding:
    prefix: --generate
  type: boolean
- doc: Compiler for building cime. Default will be the name in the  Testname or the
    default defined for the machine.
  id: compiler
  inputBinding:
    prefix: --compiler
  type: string
- doc: Only perform namelist actions for tests
  id: name_lists_only
  inputBinding:
    prefix: --namelists-only
  type: boolean
- doc: Specify a project id for the case (optional). Used for accounting when on a
    batch system. The default is user-specified environment variable PROJECT
  id: project
  inputBinding:
    prefix: --project
  type: string
- doc: "Specify an 'id' for the test. This is simply a string that is appended  to\
    \ the end of a test name. If no test-id is specified, a time stamp plus a  random\
    \ string will be used (ensuring a high probability of uniqueness).  If a test-id\
    \ is specified, it is the user's responsibility to ensure that  each run of create_test\
    \ uses a unique test-id. WARNING: problems will occur  if you use the same test-id\
    \ twice on the same file system, even if the test  lists are completely different."
  id: test_id
  inputBinding:
    prefix: --test-id
  type: string
- doc: Number of tasks create_test should perform simultaneously. The default  is
    min(num_cores, num_tests).
  id: parallel_jobs
  inputBinding:
    prefix: --parallel-jobs
  type: string
- doc: The size of the processor pool that create_test can use. The default is  MAX_MPITASKS_PER_NODE
    + 25 percent.
  id: proc_pool
  inputBinding:
    prefix: --proc-pool
  type: string
- doc: Set the wallclock limit for all tests in the suite.  Use the variable CIME_GLOBAL_WALLTIME
    to set this for all tests.
  id: wall_time
  inputBinding:
    prefix: --walltime
  type: string
- doc: Force batch system to use a certain queue
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: A file containing an ascii list of tests to run
  id: test_file
  inputBinding:
    prefix: --testfile
  type: string
- doc: 'If the --generate option is given, then an attempt to overwrite  an existing
    baseline directory will raise an error. WARNING: Specifying this  option will
    allow existing baseline directories to be silently overwritten.'
  id: allow_baseline_overwrite
  inputBinding:
    prefix: --allow-baseline-overwrite
  type: boolean
- doc: On batch systems, wait for submitted jobs to complete
  id: wait
  inputBinding:
    prefix: --wait
  type: boolean
- doc: If waiting, fail if throughput check fails
  id: wait_check_throughput
  inputBinding:
    prefix: --wait-check-throughput
  type: boolean
- doc: If waiting, fail if memory check fails
  id: wait_check_memory
  inputBinding:
    prefix: --wait-check-memory
  type: boolean
- doc: If waiting, ignore if namelist diffs
  id: wait_ignore_name_lists
  inputBinding:
    prefix: --wait-ignore-namelists
  type: boolean
- doc: If waiting, ignore if there's a memleak
  id: wait_ignore_memleak
  inputBinding:
    prefix: --wait-ignore-memleak
  type: boolean
- doc: For all tests to run with this number of processors
  id: force_procs
  inputBinding:
    prefix: --force-procs
  type: string
- doc: For all tests to run with this number of threads
  id: force_threads
  inputBinding:
    prefix: --force-threads
  type: string
- doc: Use a non-default location for input files
  id: input_dir
  inputBinding:
    prefix: --input-dir
  type: string
- doc: Full pathname of an optional pes specification file. The file can follow either
    the config_pes.xml or the env_mach_pes.xml format.
  id: pes_file
  inputBinding:
    prefix: --pesfile
  type: string
- doc: Automatically retry failed tests. >0 implies --wait
  id: retry
  inputBinding:
    prefix: --retry
  type: string
- doc: Email to be used for batch notification.
  id: mail_user
  inputBinding:
    prefix: --mail-user
  type: string
- doc: 'When to send user email. Options are: never, all, begin, end, fail. You can
    specify multiple types with either comma-separated args or multiple -M flags.'
  id: mail_type
  inputBinding:
    prefix: --mail-type
  type: string
