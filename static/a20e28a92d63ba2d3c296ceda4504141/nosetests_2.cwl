class: CommandLineTool
id: ../../../nosetests_2.7.cwl
inputs:
- id: plugins
  doc: Output list of available plugins and exit. Combine with higher verbosity for
    greater detail
  type: boolean
  inputBinding:
    prefix: --plugins
- id: verbose
  doc: Be more verbose. [NOSE_VERBOSE]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: verbosity
  doc: Set verbosity; --verbosity=2 is the same as -v
  type: string
  inputBinding:
    prefix: --verbosity
- id: quiet
  doc: Be less verbose
  type: boolean
  inputBinding:
    prefix: --quiet
- id: config
  doc: Load configuration from config file(s). May be specified multiple times; in
    that case, all config files will be loaded and combined
  type: File
  inputBinding:
    prefix: --config
- id: where
  doc: Look for tests in this directory. May be specified multiple times. The first
    directory passed will be used as the working directory, in place of the current
    working directory, which is the default. Others will be added to the list of tests
    to execute. [NOSE_WHERE]
  type: string
  inputBinding:
    prefix: --where
- id: py_three_where
  doc: Look for tests in this directory under Python 3.x. Functions the same as 'where',
    but only applies if running under Python 3.x or above.  Note that, if present
    under 3.x, this option completely replaces any directories specified with 'where',
    so the 'where' option becomes ineffective. [NOSE_PY3WHERE]
  type: string
  inputBinding:
    prefix: --py3where
- id: test_match
  doc: 'Files, directories, function names, and class names that match this regular
    expression are considered tests.  Default: (?:^|[\b_\./-])[Tt]est [NOSE_TESTMATCH]'
  type: string
  inputBinding:
    prefix: --testmatch
- id: tests
  doc: Run these tests (comma-separated list). This argument is useful mainly from
    configuration files; on the command line, just pass the tests to run as additional
    arguments with no switch.
  type: string
  inputBinding:
    prefix: --tests
- id: debug
  doc: 'Activate debug logging for one or more systems. Available debug loggers: nose,
    nose.importer, nose.inspector, nose.plugins, nose.result and nose.selector. Separate
    multiple names with a comma.'
  type: string
  inputBinding:
    prefix: --debug
- id: debug_log
  doc: 'Log debug messages to this file (default: sys.stderr)'
  type: File
  inputBinding:
    prefix: --debug-log
- id: logging_config
  doc: Load logging config from this file -- bypasses all other logging config settings.
  type: File
  inputBinding:
    prefix: --logging-config
- id: ignore_files
  doc: Completely ignore any file that matches this regular expression. Takes precedence
    over any other settings or plugins. Specifying this option will replace the default
    setting. Specify this option multiple times to add more regular expressions [NOSE_IGNORE_FILES]
  type: string
  inputBinding:
    prefix: --ignore-files
- id: exclude
  doc: Don't run tests that match regular expression [NOSE_EXCLUDE]
  type: string
  inputBinding:
    prefix: --exclude
- id: include
  doc: This regular expression will be applied to files, directories, function names,
    and class names for a chance to include additional tests that do not match TESTMATCH.  Specify
    this option multiple times to add more regular expressions [NOSE_INCLUDE]
  type: string
  inputBinding:
    prefix: --include
- id: stop
  doc: Stop running tests after the first error or failure
  type: boolean
  inputBinding:
    prefix: --stop
- id: no_path_adjustment
  doc: Don't make any changes to sys.path when loading tests [NOSE_NOPATH]
  type: boolean
  inputBinding:
    prefix: --no-path-adjustment
- id: exe
  doc: Look for tests in python modules that are executable. Normal behavior is to
    exclude executable modules, since they may not be import-safe [NOSE_INCLUDE_EXE]
  type: boolean
  inputBinding:
    prefix: --exe
- id: no_exe
  doc: DO NOT look for tests in python modules that are executable. (The default on
    the windows platform is to do so.)
  type: boolean
  inputBinding:
    prefix: --noexe
- id: traverse_namespace
  doc: Traverse through all path entries of a namespace package
  type: boolean
  inputBinding:
    prefix: --traverse-namespace
- id: first_package_wins
  doc: nose's importer will normally evict a package from sys.modules if it sees a
    package with the same name in a different location. Set this option to disable
    that behavior.
  type: boolean
  inputBinding:
    prefix: --first-package-wins
- id: no_byte_compile
  doc: Prevent nose from byte-compiling the source into .pyc files while nose is scanning
    for and running tests.
  type: boolean
  inputBinding:
    prefix: --no-byte-compile
- id: with_forced_gc
  doc: 'Enable plugin ForcedGC: Force calls to the Python garbage collector before
    and after each test. [NOSE_WITH_FORCED_GC]'
  type: boolean
  inputBinding:
    prefix: --with-forced-gc
- id: test_timeout
  doc: A per-test timeout (in seconds). [NOSE_TEST_TIMEOUT]
  type: string
  inputBinding:
    prefix: --test-timeout
- id: with_test_data
  doc: 'Enable plugin TestData: This plugin archives test data in standard CSV format.
    [NOSE_WITH_TESTDATA]'
  type: boolean
  inputBinding:
    prefix: --with-testdata
- id: test_data_file
  doc: Path to CSV file to store the test data. Default is testdata.csv in the working
    directory [NOSE_TESTDATA_FILE]
  type: File
  inputBinding:
    prefix: --testdata-file
- id: test_data_table
  doc: If this option is specified, then the CSV file is formatted as a table.  By
    default, the format is a sparse list.
  type: boolean
  inputBinding:
    prefix: --testdata-table
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
- id: with_profile
  doc: 'Enable plugin Profile:  Use this plugin to run tests using the hotshot profiler.   [NOSE_WITH_PROFILE]'
  type: boolean
  inputBinding:
    prefix: --with-profile
- id: profile_sort
  doc: Set sort order for profiler output
  type: string
  inputBinding:
    prefix: --profile-sort
- id: profile_stats_file
  doc: Profiler stats file; default is a new temp file on each run
  type: File
  inputBinding:
    prefix: --profile-stats-file
- id: profile_restrict
  doc: Restrict profiler output. See help for pstats.Stats for details
  type: string
  inputBinding:
    prefix: --profile-restrict
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
- nosetests-2.7
