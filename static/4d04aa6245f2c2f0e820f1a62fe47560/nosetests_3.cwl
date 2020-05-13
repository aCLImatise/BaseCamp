class: CommandLineTool
id: nosetests_3.6.cwl
inputs:
- id: no_byte_compile
  doc: Prevent nose from byte-compiling the source into .pyc files while nose is scanning
    for and running tests.
  type: boolean
  inputBinding:
    prefix: --no-byte-compile
- id: attr
  doc: Run only tests that have attributes specified by ATTR [NOSE_ATTR]
  type: string
  inputBinding:
    prefix: --attr
- id: eval_attr
  doc: Run only tests for whose attributes the Python expression EXPR evaluates to
    True [NOSE_EVAL_ATTR]
  type: string
  inputBinding:
    prefix: --eval-attr
- id: no_capture
  doc: Don't capture stdout (any stdout output will be printed immediately) [NOSE_NOCAPTURE]
  type: boolean
  inputBinding:
    prefix: --nocapture
- id: no_log_capture
  doc: Disable logging capture plugin. Logging configuration will be left intact.
    [NOSE_NOLOGCAPTURE]
  type: boolean
  inputBinding:
    prefix: --nologcapture
- id: logging_format
  doc: Specify custom format to print statements. Uses the same format as used by
    standard logging handlers. [NOSE_LOGFORMAT]
  type: string
  inputBinding:
    prefix: --logging-format
- id: logging_date_fmt
  doc: Specify custom date/time format to print statements. Uses the same format as
    used by standard logging handlers. [NOSE_LOGDATEFMT]
  type: string
  inputBinding:
    prefix: --logging-datefmt
- id: logging_filter
  doc: 'Specify which statements to filter in/out. By default, everything is captured.
    If the output is too verbose, use this option to filter out needless output. Example:
    filter=foo will capture statements issued ONLY to  foo or foo.what.ever.sub but
    not foobar or other logger. Specify multiple loggers with comma: filter=foo,bar,baz.
    If any logger name is prefixed with a minus, eg filter=-foo, it will be excluded
    rather than included. Default: exclude logging messages from nose itself (-nose).
    [NOSE_LOGFILTER]'
  type: string
  inputBinding:
    prefix: --logging-filter
- id: logging_clear_handlers
  doc: Clear all other logging handlers
  type: boolean
  inputBinding:
    prefix: --logging-clear-handlers
- id: logging_level
  doc: Set the log level to capture
  type: string
  inputBinding:
    prefix: --logging-level
- id: with_coverage
  doc: "Enable plugin Coverage:  Activate a coverage report using Ned Batchelder's\
    \ coverage module. [NOSE_WITH_COVERAGE]"
  type: boolean
  inputBinding:
    prefix: --with-coverage
- id: cover_package
  doc: Restrict coverage output to selected packages [NOSE_COVER_PACKAGE]
  type: string
  inputBinding:
    prefix: --cover-package
- id: cover_erase
  doc: Erase previously collected coverage statistics before run
  type: boolean
  inputBinding:
    prefix: --cover-erase
- id: cover_tests
  doc: Include test modules in coverage report [NOSE_COVER_TESTS]
  type: boolean
  inputBinding:
    prefix: --cover-tests
- id: cover_min_percentage
  doc: Minimum percentage of coverage for tests to pass [NOSE_COVER_MIN_PERCENTAGE]
  type: string
  inputBinding:
    prefix: --cover-min-percentage
- id: cover_inclusive
  doc: Include all python files under working directory in coverage report.  Useful
    for discovering holes in test coverage if not all files are imported by the test
    suite. [NOSE_COVER_INCLUSIVE]
  type: boolean
  inputBinding:
    prefix: --cover-inclusive
- id: cover_html
  doc: Produce HTML coverage information
  type: boolean
  inputBinding:
    prefix: --cover-html
- id: cover_html_dir
  doc: Produce HTML coverage information in dir
  type: string
  inputBinding:
    prefix: --cover-html-dir
- id: cover_branches
  doc: Include branch coverage in coverage report [NOSE_COVER_BRANCHES]
  type: boolean
  inputBinding:
    prefix: --cover-branches
- id: cover_xml
  doc: Produce XML coverage information
  type: boolean
  inputBinding:
    prefix: --cover-xml
- id: cover_xml_file
  doc: Produce XML coverage information in file
  type: File
  inputBinding:
    prefix: --cover-xml-file
- id: pdb
  doc: Drop into debugger on failures or errors
  type: boolean
  inputBinding:
    prefix: --pdb
- id: pdb_failures
  doc: Drop into debugger on failures
  type: boolean
  inputBinding:
    prefix: --pdb-failures
- id: pdb_errors
  doc: Drop into debugger on errors
  type: boolean
  inputBinding:
    prefix: --pdb-errors
- id: no_deprecated
  doc: Disable special handling of DeprecatedTest exceptions.
  type: boolean
  inputBinding:
    prefix: --no-deprecated
- id: with_doctest
  doc: 'Enable plugin Doctest:  Activate doctest plugin to find and run doctests in
    non-test modules. [NOSE_WITH_DOCTEST]'
  type: boolean
  inputBinding:
    prefix: --with-doctest
- id: doctest_tests
  doc: Also look for doctests in test modules. Note that classes, methods and functions
    should have either doctests or non-doctest tests, not both. [NOSE_DOCTEST_TESTS]
  type: boolean
  inputBinding:
    prefix: --doctest-tests
- id: doctest_extension
  doc: Also look for doctests in files with this extension [NOSE_DOCTEST_EXTENSION]
  type: string
  inputBinding:
    prefix: --doctest-extension
- id: doctest_result_variable
  doc: Change the variable name set to the result of the last interpreter command
    from the default '_'. Can be used to avoid conflicts with the _() function used
    for text translation. [NOSE_DOCTEST_RESULT_VAR]
  type: string
  inputBinding:
    prefix: --doctest-result-variable
- id: doctest_fixtures
  doc: Find fixtures for a doctest file in module with this name appended to the base
    name of the doctest file
  type: string
  inputBinding:
    prefix: --doctest-fixtures
- id: doctest_options
  doc: Specify options to pass to doctest. Eg. '+ELLIPSIS,+NORMALIZE_WHITESPACE'
  type: string
  inputBinding:
    prefix: --doctest-options
- id: with_isolation
  doc: 'Enable plugin IsolationPlugin:  Activate the isolation plugin to isolate changes
    to external modules to a single test module or package. The isolation plugin resets
    the contents of sys.modules after each test module or package runs to its state
    before the test. PLEASE NOTE that this plugin should not be used with the coverage
    plugin, or in any other case where module reloading may produce undesirable side-effects.
    [NOSE_WITH_ISOLATION]'
  type: boolean
  inputBinding:
    prefix: --with-isolation
- id: detailed_errors
  doc: Add detail to error output by attempting to evaluate failed asserts [NOSE_DETAILED_ERRORS]
  type: boolean
  inputBinding:
    prefix: --detailed-errors
- id: no_skip
  doc: Disable special handling of SkipTest exceptions.
  type: boolean
  inputBinding:
    prefix: --no-skip
- id: with_id
  doc: 'Enable plugin TestId:  Activate to add a test id (like #1) to each test name
    output. Activate with --failed to rerun failing tests only.  [NOSE_WITH_ID]'
  type: boolean
  inputBinding:
    prefix: --with-id
- id: id_file
  doc: Store test ids found in test runs in this file. Default is the file .noseids
    in the working directory.
  type: File
  inputBinding:
    prefix: --id-file
- id: failed
  doc: Run the tests that failed in the last test run.
  type: boolean
  inputBinding:
    prefix: --failed
- id: processes
  doc: Spread test run among this many processes. Set a number equal to the number
    of processors or cores in your machine for best results. Pass a negative number
    to have the number of processes automatically set to the number of cores. Passing
    0 means to disable parallel testing. Default is 0 unless NOSE_PROCESSES is set.
    [NOSE_PROCESSES]
  type: string
  inputBinding:
    prefix: --processes
- id: process_timeout
  doc: Set timeout for return of results from each test runner process. Default is
    10. [NOSE_PROCESS_TIMEOUT]
  type: string
  inputBinding:
    prefix: --process-timeout
- id: process_restart_worker
  doc: If set, will restart each worker process once their tests are done, this helps
    control memory leaks from killing the system. [NOSE_PROCESS_RESTARTWORKER]
  type: boolean
  inputBinding:
    prefix: --process-restartworker
- id: with_x_unit
  doc: 'Enable plugin Xunit: This plugin provides test results in the standard XUnit
    XML format. [NOSE_WITH_XUNIT]'
  type: boolean
  inputBinding:
    prefix: --with-xunit
- id: x_unit_file
  doc: Path to xml file to store the xunit report in. Default is nosetests.xml in
    the working directory [NOSE_XUNIT_FILE]
  type: File
  inputBinding:
    prefix: --xunit-file
- id: x_unit_testsuite_name
  doc: Name of the testsuite in the xunit xml, generated by plugin. Default test suite
    name is nosetests.
  type: string
  inputBinding:
    prefix: --xunit-testsuite-name
- id: all_modules
  doc: 'Enable plugin AllModules: Collect tests from all python modules.  [NOSE_ALL_MODULES]'
  type: boolean
  inputBinding:
    prefix: --all-modules
- id: collect_only
  doc: "Enable collect-only:  Collect and output test names only, don't run any tests.\
    \  [COLLECT_ONLY]"
  type: boolean
  inputBinding:
    prefix: --collect-only
outputs: []
cwlVersion: v1.1
baseCommand:
- nosetests-3.6
