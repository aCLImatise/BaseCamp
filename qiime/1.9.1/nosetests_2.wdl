version 1.0

task Nosetests2.7 {
  input {
    Boolean? plugins
    Boolean? verbose
    String? verbosity
    Boolean? quiet
    File? config
    String? where
    String? py_three_where
    String? test_match
    String? tests
    String? debug
    File? debug_log
    File? logging_config
    String? ignore_files
    String? exclude
    String? include
    Boolean? stop
    Boolean? no_path_adjustment
    Boolean? exe
    Boolean? no_exe
    Boolean? traverse_namespace
    Boolean? first_package_wins
    Boolean? no_byte_compile
    String? attr
    String? eval_attr
    Boolean? no_capture
    Boolean? no_log_capture
    String? logging_format
    String? logging_date_fmt
    String? logging_filter
    Boolean? logging_clear_handlers
    String? logging_level
    Boolean? with_coverage
    String? cover_package
    Boolean? cover_erase
    Boolean? cover_tests
    String? cover_min_percentage
    Boolean? cover_inclusive
    Boolean? cover_html
    String? cover_html_dir
    Boolean? cover_branches
    Boolean? cover_xml
    File? cover_xml_file
    Boolean? pdb
    Boolean? pdb_failures
    Boolean? pdb_errors
    Boolean? no_deprecated
    Boolean? with_doctest
    Boolean? doctest_tests
    String? doctest_extension
    String? doctest_result_variable
    String? doctest_fixtures
    String? doctest_options
    Boolean? with_isolation
    Boolean? detailed_errors
    Boolean? with_profile
    String? profile_sort
    File? profile_stats_file
    String? profile_restrict
    Boolean? no_skip
    Boolean? with_id
    File? id_file
    Boolean? failed
    String? processes
    String? process_timeout
    Boolean? process_restart_worker
    Boolean? with_x_unit
    File? x_unit_file
    String? x_unit_testsuite_name
    Boolean? all_modules
    Boolean? collect_only
  }
  command <<<
    nosetests-2.7 \
      ~{true="--plugins" false="" plugins} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(where) then ("--where " +  '"' + where + '"') else ""} \
      ~{if defined(py_three_where) then ("--py3where " +  '"' + py_three_where + '"') else ""} \
      ~{if defined(test_match) then ("--testmatch " +  '"' + test_match + '"') else ""} \
      ~{if defined(tests) then ("--tests " +  '"' + tests + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(debug_log) then ("--debug-log " +  '"' + debug_log + '"') else ""} \
      ~{if defined(logging_config) then ("--logging-config " +  '"' + logging_config + '"') else ""} \
      ~{if defined(ignore_files) then ("--ignore-files " +  '"' + ignore_files + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{true="--stop" false="" stop} \
      ~{true="--no-path-adjustment" false="" no_path_adjustment} \
      ~{true="--exe" false="" exe} \
      ~{true="--noexe" false="" no_exe} \
      ~{true="--traverse-namespace" false="" traverse_namespace} \
      ~{true="--first-package-wins" false="" first_package_wins} \
      ~{true="--no-byte-compile" false="" no_byte_compile} \
      ~{if defined(attr) then ("--attr " +  '"' + attr + '"') else ""} \
      ~{if defined(eval_attr) then ("--eval-attr " +  '"' + eval_attr + '"') else ""} \
      ~{true="--nocapture" false="" no_capture} \
      ~{true="--nologcapture" false="" no_log_capture} \
      ~{if defined(logging_format) then ("--logging-format " +  '"' + logging_format + '"') else ""} \
      ~{if defined(logging_date_fmt) then ("--logging-datefmt " +  '"' + logging_date_fmt + '"') else ""} \
      ~{if defined(logging_filter) then ("--logging-filter " +  '"' + logging_filter + '"') else ""} \
      ~{true="--logging-clear-handlers" false="" logging_clear_handlers} \
      ~{if defined(logging_level) then ("--logging-level " +  '"' + logging_level + '"') else ""} \
      ~{true="--with-coverage" false="" with_coverage} \
      ~{if defined(cover_package) then ("--cover-package " +  '"' + cover_package + '"') else ""} \
      ~{true="--cover-erase" false="" cover_erase} \
      ~{true="--cover-tests" false="" cover_tests} \
      ~{if defined(cover_min_percentage) then ("--cover-min-percentage " +  '"' + cover_min_percentage + '"') else ""} \
      ~{true="--cover-inclusive" false="" cover_inclusive} \
      ~{true="--cover-html" false="" cover_html} \
      ~{if defined(cover_html_dir) then ("--cover-html-dir " +  '"' + cover_html_dir + '"') else ""} \
      ~{true="--cover-branches" false="" cover_branches} \
      ~{true="--cover-xml" false="" cover_xml} \
      ~{if defined(cover_xml_file) then ("--cover-xml-file " +  '"' + cover_xml_file + '"') else ""} \
      ~{true="--pdb" false="" pdb} \
      ~{true="--pdb-failures" false="" pdb_failures} \
      ~{true="--pdb-errors" false="" pdb_errors} \
      ~{true="--no-deprecated" false="" no_deprecated} \
      ~{true="--with-doctest" false="" with_doctest} \
      ~{true="--doctest-tests" false="" doctest_tests} \
      ~{if defined(doctest_extension) then ("--doctest-extension " +  '"' + doctest_extension + '"') else ""} \
      ~{if defined(doctest_result_variable) then ("--doctest-result-variable " +  '"' + doctest_result_variable + '"') else ""} \
      ~{if defined(doctest_fixtures) then ("--doctest-fixtures " +  '"' + doctest_fixtures + '"') else ""} \
      ~{if defined(doctest_options) then ("--doctest-options " +  '"' + doctest_options + '"') else ""} \
      ~{true="--with-isolation" false="" with_isolation} \
      ~{true="--detailed-errors" false="" detailed_errors} \
      ~{true="--with-profile" false="" with_profile} \
      ~{if defined(profile_sort) then ("--profile-sort " +  '"' + profile_sort + '"') else ""} \
      ~{if defined(profile_stats_file) then ("--profile-stats-file " +  '"' + profile_stats_file + '"') else ""} \
      ~{if defined(profile_restrict) then ("--profile-restrict " +  '"' + profile_restrict + '"') else ""} \
      ~{true="--no-skip" false="" no_skip} \
      ~{true="--with-id" false="" with_id} \
      ~{if defined(id_file) then ("--id-file " +  '"' + id_file + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(process_timeout) then ("--process-timeout " +  '"' + process_timeout + '"') else ""} \
      ~{true="--process-restartworker" false="" process_restart_worker} \
      ~{true="--with-xunit" false="" with_x_unit} \
      ~{if defined(x_unit_file) then ("--xunit-file " +  '"' + x_unit_file + '"') else ""} \
      ~{if defined(x_unit_testsuite_name) then ("--xunit-testsuite-name " +  '"' + x_unit_testsuite_name + '"') else ""} \
      ~{true="--all-modules" false="" all_modules} \
      ~{true="--collect-only" false="" collect_only}
  >>>
  parameter_meta {
    plugins: "Output list of available plugins and exit. Combine with higher verbosity for greater detail"
    verbose: "Be more verbose. [NOSE_VERBOSE]"
    verbosity: "Set verbosity; --verbosity=2 is the same as -v"
    quiet: "Be less verbose"
    config: "Load configuration from config file(s). May be specified multiple times; in that case, all config files will be loaded and combined"
    where: "Look for tests in this directory. May be specified multiple times. The first directory passed will be used as the working directory, in place of the current working directory, which is the default. Others will be added to the list of tests to execute. [NOSE_WHERE]"
    py_three_where: "Look for tests in this directory under Python 3.x. Functions the same as 'where', but only applies if running under Python 3.x or above.  Note that, if present under 3.x, this option completely replaces any directories specified with 'where', so the 'where' option becomes ineffective. [NOSE_PY3WHERE]"
    test_match: "Files, directories, function names, and class names that match this regular expression are considered tests.  Default: (?:^|[\b_\./-])[Tt]est [NOSE_TESTMATCH]"
    tests: "Run these tests (comma-separated list). This argument is useful mainly from configuration files; on the command line, just pass the tests to run as additional arguments with no switch."
    debug: "Activate debug logging for one or more systems. Available debug loggers: nose, nose.importer, nose.inspector, nose.plugins, nose.result and nose.selector. Separate multiple names with a comma."
    debug_log: "Log debug messages to this file (default: sys.stderr)"
    logging_config: "Load logging config from this file -- bypasses all other logging config settings."
    ignore_files: "Completely ignore any file that matches this regular expression. Takes precedence over any other settings or plugins. Specifying this option will replace the default setting. Specify this option multiple times to add more regular expressions [NOSE_IGNORE_FILES]"
    exclude: "Don't run tests that match regular expression [NOSE_EXCLUDE]"
    include: "This regular expression will be applied to files, directories, function names, and class names for a chance to include additional tests that do not match TESTMATCH.  Specify this option multiple times to add more regular expressions [NOSE_INCLUDE]"
    stop: "Stop running tests after the first error or failure"
    no_path_adjustment: "Don't make any changes to sys.path when loading tests [NOSE_NOPATH]"
    exe: "Look for tests in python modules that are executable. Normal behavior is to exclude executable modules, since they may not be import-safe [NOSE_INCLUDE_EXE]"
    no_exe: "DO NOT look for tests in python modules that are executable. (The default on the windows platform is to do so.)"
    traverse_namespace: "Traverse through all path entries of a namespace package"
    first_package_wins: "nose's importer will normally evict a package from sys.modules if it sees a package with the same name in a different location. Set this option to disable that behavior."
    no_byte_compile: "Prevent nose from byte-compiling the source into .pyc files while nose is scanning for and running tests."
    attr: "Run only tests that have attributes specified by ATTR [NOSE_ATTR]"
    eval_attr: "Run only tests for whose attributes the Python expression EXPR evaluates to True [NOSE_EVAL_ATTR]"
    no_capture: "Don't capture stdout (any stdout output will be printed immediately) [NOSE_NOCAPTURE]"
    no_log_capture: "Disable logging capture plugin. Logging configuration will be left intact. [NOSE_NOLOGCAPTURE]"
    logging_format: "Specify custom format to print statements. Uses the same format as used by standard logging handlers. [NOSE_LOGFORMAT]"
    logging_date_fmt: "Specify custom date/time format to print statements. Uses the same format as used by standard logging handlers. [NOSE_LOGDATEFMT]"
    logging_filter: "Specify which statements to filter in/out. By default, everything is captured. If the output is too verbose, use this option to filter out needless output. Example: filter=foo will capture statements issued ONLY to  foo or foo.what.ever.sub but not foobar or other logger. Specify multiple loggers with comma: filter=foo,bar,baz. If any logger name is prefixed with a minus, eg filter=-foo, it will be excluded rather than included. Default: exclude logging messages from nose itself (-nose). [NOSE_LOGFILTER]"
    logging_clear_handlers: "Clear all other logging handlers"
    logging_level: "Set the log level to capture"
    with_coverage: "Enable plugin Coverage:  Activate a coverage report using Ned Batchelder's coverage module. [NOSE_WITH_COVERAGE]"
    cover_package: "Restrict coverage output to selected packages [NOSE_COVER_PACKAGE]"
    cover_erase: "Erase previously collected coverage statistics before run"
    cover_tests: "Include test modules in coverage report [NOSE_COVER_TESTS]"
    cover_min_percentage: "Minimum percentage of coverage for tests to pass [NOSE_COVER_MIN_PERCENTAGE]"
    cover_inclusive: "Include all python files under working directory in coverage report.  Useful for discovering holes in test coverage if not all files are imported by the test suite. [NOSE_COVER_INCLUSIVE]"
    cover_html: "Produce HTML coverage information"
    cover_html_dir: "Produce HTML coverage information in dir"
    cover_branches: "Include branch coverage in coverage report [NOSE_COVER_BRANCHES]"
    cover_xml: "Produce XML coverage information"
    cover_xml_file: "Produce XML coverage information in file"
    pdb: "Drop into debugger on failures or errors"
    pdb_failures: "Drop into debugger on failures"
    pdb_errors: "Drop into debugger on errors"
    no_deprecated: "Disable special handling of DeprecatedTest exceptions."
    with_doctest: "Enable plugin Doctest:  Activate doctest plugin to find and run doctests in non-test modules. [NOSE_WITH_DOCTEST]"
    doctest_tests: "Also look for doctests in test modules. Note that classes, methods and functions should have either doctests or non-doctest tests, not both. [NOSE_DOCTEST_TESTS]"
    doctest_extension: "Also look for doctests in files with this extension [NOSE_DOCTEST_EXTENSION]"
    doctest_result_variable: "Change the variable name set to the result of the last interpreter command from the default '_'. Can be used to avoid conflicts with the _() function used for text translation. [NOSE_DOCTEST_RESULT_VAR]"
    doctest_fixtures: "Find fixtures for a doctest file in module with this name appended to the base name of the doctest file"
    doctest_options: "Specify options to pass to doctest. Eg. '+ELLIPSIS,+NORMALIZE_WHITESPACE'"
    with_isolation: "Enable plugin IsolationPlugin:  Activate the isolation plugin to isolate changes to external modules to a single test module or package. The isolation plugin resets the contents of sys.modules after each test module or package runs to its state before the test. PLEASE NOTE that this plugin should not be used with the coverage plugin, or in any other case where module reloading may produce undesirable side-effects. [NOSE_WITH_ISOLATION]"
    detailed_errors: "Add detail to error output by attempting to evaluate failed asserts [NOSE_DETAILED_ERRORS]"
    with_profile: "Enable plugin Profile:  Use this plugin to run tests using the hotshot profiler.   [NOSE_WITH_PROFILE]"
    profile_sort: "Set sort order for profiler output"
    profile_stats_file: "Profiler stats file; default is a new temp file on each run"
    profile_restrict: "Restrict profiler output. See help for pstats.Stats for details"
    no_skip: "Disable special handling of SkipTest exceptions."
    with_id: "Enable plugin TestId:  Activate to add a test id (like #1) to each test name output. Activate with --failed to rerun failing tests only.  [NOSE_WITH_ID]"
    id_file: "Store test ids found in test runs in this file. Default is the file .noseids in the working directory."
    failed: "Run the tests that failed in the last test run."
    processes: "Spread test run among this many processes. Set a number equal to the number of processors or cores in your machine for best results. Pass a negative number to have the number of processes automatically set to the number of cores. Passing 0 means to disable parallel testing. Default is 0 unless NOSE_PROCESSES is set. [NOSE_PROCESSES]"
    process_timeout: "Set timeout for return of results from each test runner process. Default is 10. [NOSE_PROCESS_TIMEOUT]"
    process_restart_worker: "If set, will restart each worker process once their tests are done, this helps control memory leaks from killing the system. [NOSE_PROCESS_RESTARTWORKER]"
    with_x_unit: "Enable plugin Xunit: This plugin provides test results in the standard XUnit XML format. [NOSE_WITH_XUNIT]"
    x_unit_file: "Path to xml file to store the xunit report in. Default is nosetests.xml in the working directory [NOSE_XUNIT_FILE]"
    x_unit_testsuite_name: "Name of the testsuite in the xunit xml, generated by plugin. Default test suite name is nosetests."
    all_modules: "Enable plugin AllModules: Collect tests from all python modules.  [NOSE_ALL_MODULES]"
    collect_only: "Enable collect-only:  Collect and output test names only, don't run any tests.  [COLLECT_ONLY]"
  }
}