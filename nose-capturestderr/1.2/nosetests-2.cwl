#!/usr/bin/env cwl-runner

baseCommand:
- nosetests-2.7
class: CommandLineTool
cwlVersion: v1.0
id: nosetests-2.7
inputs:
- doc: Prevent nose from byte-compiling the source into .pyc files while nose is scanning
    for and running tests.
  id: no_byte_compile
  inputBinding:
    prefix: --no-byte-compile
  type: boolean
- doc: Don't capture stderr (any stderr output will be printed immediately) [NOSE_NOCAPTURESTDERR]
  id: no_capture_stderr
  inputBinding:
    prefix: --nocapturestderr
  type: boolean
- doc: Run only tests that have attributes specified by ATTR [NOSE_ATTR]
  id: attr
  inputBinding:
    prefix: --attr
  type: string
- doc: Run only tests for whose attributes the Python expression EXPR evaluates to
    True [NOSE_EVAL_ATTR]
  id: eval_attr
  inputBinding:
    prefix: --eval-attr
  type: string
- doc: Don't capture stdout (any stdout output will be printed immediately) [NOSE_NOCAPTURE]
  id: no_capture
  inputBinding:
    prefix: --nocapture
  type: boolean
- doc: Disable logging capture plugin. Logging configuration will be left intact.
    [NOSE_NOLOGCAPTURE]
  id: no_log_capture
  inputBinding:
    prefix: --nologcapture
  type: boolean
- doc: Specify custom format to print statements. Uses the same format as used by
    standard logging handlers. [NOSE_LOGFORMAT]
  id: logging_format
  inputBinding:
    prefix: --logging-format
  type: string
- doc: Specify custom date/time format to print statements. Uses the same format as
    used by standard logging handlers. [NOSE_LOGDATEFMT]
  id: logging_date_fmt
  inputBinding:
    prefix: --logging-datefmt
  type: string
- doc: 'Specify which statements to filter in/out. By default, everything is captured.
    If the output is too verbose, use this option to filter out needless output. Example:
    filter=foo will capture statements issued ONLY to  foo or foo.what.ever.sub but
    not foobar or other logger. Specify multiple loggers with comma: filter=foo,bar,baz.
    If any logger name is prefixed with a minus, eg filter=-foo, it will be excluded
    rather than included. Default: exclude logging messages from nose itself (-nose).
    [NOSE_LOGFILTER]'
  id: logging_filter
  inputBinding:
    prefix: --logging-filter
  type: string
- doc: Clear all other logging handlers
  id: logging_clear_handlers
  inputBinding:
    prefix: --logging-clear-handlers
  type: boolean
- doc: Set the log level to capture
  id: logging_level
  inputBinding:
    prefix: --logging-level
  type: string
- doc: "Enable plugin Coverage:  Activate a coverage report using Ned Batchelder's\
    \ coverage module. [NOSE_WITH_COVERAGE]"
  id: with_coverage
  inputBinding:
    prefix: --with-coverage
  type: boolean
- doc: Restrict coverage output to selected packages [NOSE_COVER_PACKAGE]
  id: cover_package
  inputBinding:
    prefix: --cover-package
  type: string
- doc: Erase previously collected coverage statistics before run
  id: cover_erase
  inputBinding:
    prefix: --cover-erase
  type: boolean
- doc: Include test modules in coverage report [NOSE_COVER_TESTS]
  id: cover_tests
  inputBinding:
    prefix: --cover-tests
  type: boolean
- doc: Minimum percentage of coverage for tests to pass [NOSE_COVER_MIN_PERCENTAGE]
  id: cover_min_percentage
  inputBinding:
    prefix: --cover-min-percentage
  type: string
- doc: Include all python files under working directory in coverage report.  Useful
    for discovering holes in test coverage if not all files are imported by the test
    suite. [NOSE_COVER_INCLUSIVE]
  id: cover_inclusive
  inputBinding:
    prefix: --cover-inclusive
  type: boolean
- doc: Produce HTML coverage information
  id: cover_html
  inputBinding:
    prefix: --cover-html
  type: boolean
- doc: Produce HTML coverage information in dir
  id: cover_html_dir
  inputBinding:
    prefix: --cover-html-dir
  type: string
- doc: Include branch coverage in coverage report [NOSE_COVER_BRANCHES]
  id: cover_branches
  inputBinding:
    prefix: --cover-branches
  type: boolean
- doc: Produce XML coverage information
  id: cover_xml
  inputBinding:
    prefix: --cover-xml
  type: boolean
- doc: Produce XML coverage information in file
  id: cover_xml_file
  inputBinding:
    prefix: --cover-xml-file
  type: File
- doc: Drop into debugger on failures or errors
  id: pdb
  inputBinding:
    prefix: --pdb
  type: boolean
- doc: Drop into debugger on failures
  id: pdb_failures
  inputBinding:
    prefix: --pdb-failures
  type: boolean
- doc: Drop into debugger on errors
  id: pdb_errors
  inputBinding:
    prefix: --pdb-errors
  type: boolean
- doc: Disable special handling of DeprecatedTest exceptions.
  id: no_deprecated
  inputBinding:
    prefix: --no-deprecated
  type: boolean
- doc: 'Enable plugin Doctest:  Activate doctest plugin to find and run doctests in
    non-test modules. [NOSE_WITH_DOCTEST]'
  id: with_doctest
  inputBinding:
    prefix: --with-doctest
  type: boolean
- doc: Also look for doctests in test modules. Note that classes, methods and functions
    should have either doctests or non-doctest tests, not both. [NOSE_DOCTEST_TESTS]
  id: doctest_tests
  inputBinding:
    prefix: --doctest-tests
  type: boolean
- doc: Also look for doctests in files with this extension [NOSE_DOCTEST_EXTENSION]
  id: doctest_extension
  inputBinding:
    prefix: --doctest-extension
  type: string
- doc: Change the variable name set to the result of the last interpreter command
    from the default '_'. Can be used to avoid conflicts with the _() function used
    for text translation. [NOSE_DOCTEST_RESULT_VAR]
  id: doctest_result_variable
  inputBinding:
    prefix: --doctest-result-variable
  type: string
- doc: Find fixtures for a doctest file in module with this name appended to the base
    name of the doctest file
  id: doctest_fixtures
  inputBinding:
    prefix: --doctest-fixtures
  type: string
- doc: Specify options to pass to doctest. Eg. '+ELLIPSIS,+NORMALIZE_WHITESPACE'
  id: doctest_options
  inputBinding:
    prefix: --doctest-options
  type: string
- doc: 'Enable plugin IsolationPlugin:  Activate the isolation plugin to isolate changes
    to external modules to a single test module or package. The isolation plugin resets
    the contents of sys.modules after each test module or package runs to its state
    before the test. PLEASE NOTE that this plugin should not be used with the coverage
    plugin, or in any other case where module reloading may produce undesirable side-effects.
    [NOSE_WITH_ISOLATION]'
  id: with_isolation
  inputBinding:
    prefix: --with-isolation
  type: boolean
- doc: Add detail to error output by attempting to evaluate failed asserts [NOSE_DETAILED_ERRORS]
  id: detailed_errors
  inputBinding:
    prefix: --detailed-errors
  type: boolean
- doc: 'Enable plugin Profile:  Use this plugin to run tests using the hotshot profiler.   [NOSE_WITH_PROFILE]'
  id: with_profile
  inputBinding:
    prefix: --with-profile
  type: boolean
- doc: Set sort order for profiler output
  id: profile_sort
  inputBinding:
    prefix: --profile-sort
  type: string
- doc: Profiler stats file; default is a new temp file on each run
  id: profile_stats_file
  inputBinding:
    prefix: --profile-stats-file
  type: File
- doc: Restrict profiler output. See help for pstats.Stats for details
  id: profile_restrict
  inputBinding:
    prefix: --profile-restrict
  type: string
- doc: Disable special handling of SkipTest exceptions.
  id: no_skip
  inputBinding:
    prefix: --no-skip
  type: boolean
- doc: 'Enable plugin TestId:  Activate to add a test id (like #1) to each test name
    output. Activate with --failed to rerun failing tests only.  [NOSE_WITH_ID]'
  id: with_id
  inputBinding:
    prefix: --with-id
  type: boolean
- doc: Store test ids found in test runs in this file. Default is the file .noseids
    in the working directory.
  id: id_file
  inputBinding:
    prefix: --id-file
  type: File
- doc: Run the tests that failed in the last test run.
  id: failed
  inputBinding:
    prefix: --failed
  type: boolean
- doc: Spread test run among this many processes. Set a number equal to the number
    of processors or cores in your machine for best results. Pass a negative number
    to have the number of processes automatically set to the number of cores. Passing
    0 means to disable parallel testing. Default is 0 unless NOSE_PROCESSES is set.
    [NOSE_PROCESSES]
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: Set timeout for return of results from each test runner process. Default is
    10. [NOSE_PROCESS_TIMEOUT]
  id: process_timeout
  inputBinding:
    prefix: --process-timeout
  type: string
- doc: If set, will restart each worker process once their tests are done, this helps
    control memory leaks from killing the system. [NOSE_PROCESS_RESTARTWORKER]
  id: process_restart_worker
  inputBinding:
    prefix: --process-restartworker
  type: boolean
- doc: 'Enable plugin Xunit: This plugin provides test results in the standard XUnit
    XML format. [NOSE_WITH_XUNIT]'
  id: with_x_unit
  inputBinding:
    prefix: --with-xunit
  type: boolean
- doc: Path to xml file to store the xunit report in. Default is nosetests.xml in
    the working directory [NOSE_XUNIT_FILE]
  id: x_unit_file
  inputBinding:
    prefix: --xunit-file
  type: File
- doc: Name of the testsuite in the xunit xml, generated by plugin. Default test suite
    name is nosetests.
  id: x_unit_testsuite_name
  inputBinding:
    prefix: --xunit-testsuite-name
  type: string
- doc: 'Enable plugin AllModules: Collect tests from all python modules.  [NOSE_ALL_MODULES]'
  id: all_modules
  inputBinding:
    prefix: --all-modules
  type: boolean
- doc: "Enable collect-only:  Collect and output test names only, don't run any tests.\
    \  [COLLECT_ONLY]"
  id: collect_only
  inputBinding:
    prefix: --collect-only
  type: boolean
