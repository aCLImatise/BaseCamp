version 1.0

task Nosetests27 {
  input {
    Boolean? plugins
    Boolean? verbose
    Int? verbosity
    Boolean? quiet
    File? config
    Directory? where
    Int? py_three_where
    String? test_match
    String? tests
    String? debug
    File? debug_log
    File? logging_config
    File? ignore_files
    String? exclude
    String? include
    Boolean? stop
    Boolean? no_path_adjustment
    Boolean? exe
    Boolean? no_exe
    Boolean? traverse_namespace
    Boolean? no_capture_stderr
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
    Int? cover_min_percentage
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
    File? doctest_fixtures
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
    Int? processes
    Int? process_timeout
    Boolean? process_restart_worker
    Boolean? with_x_unit
    File? x_unit_file
    String? x_unit_testsuite_name
    Boolean? all_modules
    Boolean? collect_only
    String package
    String behavior_dot
    String run
  }
  command <<<
    nosetests_2_7 \
      ~{package} \
      ~{behavior_dot} \
      ~{run} \
      ~{if (plugins) then "--plugins" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
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
      ~{if (stop) then "--stop" else ""} \
      ~{if (no_path_adjustment) then "--no-path-adjustment" else ""} \
      ~{if (exe) then "--exe" else ""} \
      ~{if (no_exe) then "--noexe" else ""} \
      ~{if (traverse_namespace) then "--traverse-namespace" else ""} \
      ~{if (no_capture_stderr) then "--nocapturestderr" else ""} \
      ~{if defined(attr) then ("--attr " +  '"' + attr + '"') else ""} \
      ~{if defined(eval_attr) then ("--eval-attr " +  '"' + eval_attr + '"') else ""} \
      ~{if (no_capture) then "--nocapture" else ""} \
      ~{if (no_log_capture) then "--nologcapture" else ""} \
      ~{if defined(logging_format) then ("--logging-format " +  '"' + logging_format + '"') else ""} \
      ~{if defined(logging_date_fmt) then ("--logging-datefmt " +  '"' + logging_date_fmt + '"') else ""} \
      ~{if defined(logging_filter) then ("--logging-filter " +  '"' + logging_filter + '"') else ""} \
      ~{if (logging_clear_handlers) then "--logging-clear-handlers" else ""} \
      ~{if defined(logging_level) then ("--logging-level " +  '"' + logging_level + '"') else ""} \
      ~{if (with_coverage) then "--with-coverage" else ""} \
      ~{if defined(cover_package) then ("--cover-package " +  '"' + cover_package + '"') else ""} \
      ~{if (cover_erase) then "--cover-erase" else ""} \
      ~{if defined(cover_min_percentage) then ("--cover-min-percentage " +  '"' + cover_min_percentage + '"') else ""} \
      ~{if (cover_inclusive) then "--cover-inclusive" else ""} \
      ~{if (cover_html) then "--cover-html" else ""} \
      ~{if defined(cover_html_dir) then ("--cover-html-dir " +  '"' + cover_html_dir + '"') else ""} \
      ~{if (cover_branches) then "--cover-branches" else ""} \
      ~{if (cover_xml) then "--cover-xml" else ""} \
      ~{if defined(cover_xml_file) then ("--cover-xml-file " +  '"' + cover_xml_file + '"') else ""} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if (pdb_failures) then "--pdb-failures" else ""} \
      ~{if (pdb_errors) then "--pdb-errors" else ""} \
      ~{if (no_deprecated) then "--no-deprecated" else ""} \
      ~{if (with_doctest) then "--with-doctest" else ""} \
      ~{if (doctest_tests) then "--doctest-tests" else ""} \
      ~{if defined(doctest_extension) then ("--doctest-extension " +  '"' + doctest_extension + '"') else ""} \
      ~{if defined(doctest_result_variable) then ("--doctest-result-variable " +  '"' + doctest_result_variable + '"') else ""} \
      ~{if defined(doctest_fixtures) then ("--doctest-fixtures " +  '"' + doctest_fixtures + '"') else ""} \
      ~{if defined(doctest_options) then ("--doctest-options " +  '"' + doctest_options + '"') else ""} \
      ~{if (with_isolation) then "--with-isolation" else ""} \
      ~{if (detailed_errors) then "--detailed-errors" else ""} \
      ~{if (with_profile) then "--with-profile" else ""} \
      ~{if defined(profile_sort) then ("--profile-sort " +  '"' + profile_sort + '"') else ""} \
      ~{if defined(profile_stats_file) then ("--profile-stats-file " +  '"' + profile_stats_file + '"') else ""} \
      ~{if defined(profile_restrict) then ("--profile-restrict " +  '"' + profile_restrict + '"') else ""} \
      ~{if (no_skip) then "--no-skip" else ""} \
      ~{if (with_id) then "--with-id" else ""} \
      ~{if defined(id_file) then ("--id-file " +  '"' + id_file + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(process_timeout) then ("--process-timeout " +  '"' + process_timeout + '"') else ""} \
      ~{if (process_restart_worker) then "--process-restartworker" else ""} \
      ~{if (with_x_unit) then "--with-xunit" else ""} \
      ~{if defined(x_unit_file) then ("--xunit-file " +  '"' + x_unit_file + '"') else ""} \
      ~{if defined(x_unit_testsuite_name) then ("--xunit-testsuite-name " +  '"' + x_unit_testsuite_name + '"') else ""} \
      ~{if (all_modules) then "--all-modules" else ""} \
      ~{if (collect_only) then "--collect-only" else ""}
  >>>
  parameter_meta {
    plugins: "Output list of available plugins and exit. Combine\\nwith higher verbosity for greater detail"
    verbose: "Be more verbose. [NOSE_VERBOSE]"
    verbosity: "Set verbosity; --verbosity=2 is the same as -v"
    quiet: "Be less verbose"
    config: "Load configuration from config file(s). May be\\nspecified multiple times; in that case, all config\\nfiles will be loaded and combined"
    where: "Look for tests in this directory. May be specified\\nmultiple times. The first directory passed will be\\nused as the working directory, in place of the current\\nworking directory, which is the default. Others will\\nbe added to the list of tests to execute. [NOSE_WHERE]"
    py_three_where: "Look for tests in this directory under Python 3.x.\\nFunctions the same as 'where', but only applies if\\nrunning under Python 3.x or above.  Note that, if\\npresent under 3.x, this option completely replaces any\\ndirectories specified with 'where', so the 'where'\\noption becomes ineffective. [NOSE_PY3WHERE]"
    test_match: "Files, directories, function names, and class names\\nthat match this regular expression are considered\\ntests.  Default: (?:^|[\\b_\\./-])[Tt]est\\n[NOSE_TESTMATCH]"
    tests: "Run these tests (comma-separated list). This argument\\nis useful mainly from configuration files; on the\\ncommand line, just pass the tests to run as additional\\narguments with no switch."
    debug: "Activate debug logging for one or more systems.\\nAvailable debug loggers: nose, nose.importer,\\nnose.inspector, nose.plugins, nose.result and\\nnose.selector. Separate multiple names with a comma."
    debug_log: "Log debug messages to this file (default: sys.stderr)"
    logging_config: "Load logging config from this file -- bypasses all\\nother logging config settings."
    ignore_files: "Completely ignore any file that matches this regular\\nexpression. Takes precedence over any other settings\\nor plugins. Specifying this option will replace the\\ndefault setting. Specify this option multiple times to\\nadd more regular expressions [NOSE_IGNORE_FILES]"
    exclude: "Don't run tests that match regular expression\\n[NOSE_EXCLUDE]"
    include: "This regular expression will be applied to files,\\ndirectories, function names, and class names for a\\nchance to include additional tests that do not match\\nTESTMATCH.  Specify this option multiple times to add\\nmore regular expressions [NOSE_INCLUDE]"
    stop: "Stop running tests after the first error or failure"
    no_path_adjustment: "Don't make any changes to sys.path when loading tests\\n[NOSE_NOPATH]"
    exe: "Look for tests in python modules that are executable.\\nNormal behavior is to exclude executable modules,\\nsince they may not be import-safe [NOSE_INCLUDE_EXE]"
    no_exe: "DO NOT look for tests in python modules that are\\nexecutable. (The default on the windows platform is to\\ndo so.)"
    traverse_namespace: "Traverse through all path entries of a namespace"
    no_capture_stderr: "Don't capture stderr (any stderr output will be\\nprinted immediately) [NOSE_NOCAPTURESTDERR]"
    attr: "Run only tests that have attributes specified by ATTR\\n[NOSE_ATTR]"
    eval_attr: "Run only tests for whose attributes the Python\\nexpression EXPR evaluates to True [NOSE_EVAL_ATTR]"
    no_capture: "Don't capture stdout (any stdout output will be\\nprinted immediately) [NOSE_NOCAPTURE]"
    no_log_capture: "Disable logging capture plugin. Logging configuration\\nwill be left intact. [NOSE_NOLOGCAPTURE]"
    logging_format: "Specify custom format to print statements. Uses the\\nsame format as used by standard logging handlers.\\n[NOSE_LOGFORMAT]"
    logging_date_fmt: "Specify custom date/time format to print statements.\\nUses the same format as used by standard logging\\nhandlers. [NOSE_LOGDATEFMT]"
    logging_filter: "Specify which statements to filter in/out. By default,\\neverything is captured. If the output is too verbose,\\nuse this option to filter out needless output.\\nExample: filter=foo will capture statements issued\\nONLY to  foo or foo.what.ever.sub but not foobar or\\nother logger. Specify multiple loggers with comma:\\nfilter=foo,bar,baz. If any logger name is prefixed\\nwith a minus, eg filter=-foo, it will be excluded\\nrather than included. Default: exclude logging\\nmessages from nose itself (-nose). [NOSE_LOGFILTER]"
    logging_clear_handlers: "Clear all other logging handlers"
    logging_level: "Set the log level to capture"
    with_coverage: "Enable plugin Coverage:  Activate a coverage report\\nusing Ned Batchelder's coverage module.\\n[NOSE_WITH_COVERAGE]"
    cover_package: "Restrict coverage output to selected packages\\n[NOSE_COVER_PACKAGE]"
    cover_erase: "Erase previously collected coverage statistics before"
    cover_min_percentage: "Minimum percentage of coverage for tests to pass\\n[NOSE_COVER_MIN_PERCENTAGE]"
    cover_inclusive: "Include all python files under working directory in\\ncoverage report.  Useful for discovering holes in test\\ncoverage if not all files are imported by the test\\nsuite. [NOSE_COVER_INCLUSIVE]"
    cover_html: "Produce HTML coverage information"
    cover_html_dir: "Produce HTML coverage information in dir"
    cover_branches: "Include branch coverage in coverage report\\n[NOSE_COVER_BRANCHES]"
    cover_xml: "Produce XML coverage information"
    cover_xml_file: "Produce XML coverage information in file"
    pdb: "Drop into debugger on failures or errors"
    pdb_failures: "Drop into debugger on failures"
    pdb_errors: "Drop into debugger on errors"
    no_deprecated: "Disable special handling of DeprecatedTest exceptions."
    with_doctest: "Enable plugin Doctest:  Activate doctest plugin to\\nfind and run doctests in non-test modules.\\n[NOSE_WITH_DOCTEST]"
    doctest_tests: "Also look for doctests in test modules. Note that\\nclasses, methods and functions should have either\\ndoctests or non-doctest tests, not both.\\n[NOSE_DOCTEST_TESTS]"
    doctest_extension: "Also look for doctests in files with this extension\\n[NOSE_DOCTEST_EXTENSION]"
    doctest_result_variable: "Change the variable name set to the result of the last\\ninterpreter command from the default '_'. Can be used\\nto avoid conflicts with the _() function used for text\\ntranslation. [NOSE_DOCTEST_RESULT_VAR]"
    doctest_fixtures: "Find fixtures for a doctest file in module with this\\nname appended to the base name of the doctest file"
    doctest_options: "Specify options to pass to doctest. Eg.\\n'+ELLIPSIS,+NORMALIZE_WHITESPACE'"
    with_isolation: "Enable plugin IsolationPlugin:  Activate the isolation\\nplugin to isolate changes to external modules to a\\nsingle test module or package. The isolation plugin\\nresets the contents of sys.modules after each test\\nmodule or package runs to its state before the test.\\nPLEASE NOTE that this plugin should not be used with\\nthe coverage plugin, or in any other case where module\\nreloading may produce undesirable side-effects.\\n[NOSE_WITH_ISOLATION]"
    detailed_errors: "Add detail to error output by attempting to evaluate\\nfailed asserts [NOSE_DETAILED_ERRORS]"
    with_profile: "Enable plugin Profile:  Use this plugin to run tests\\nusing the hotshot profiler.   [NOSE_WITH_PROFILE]"
    profile_sort: "Set sort order for profiler output"
    profile_stats_file: "Profiler stats file; default is a new temp file on\\neach run"
    profile_restrict: "Restrict profiler output. See help for pstats.Stats\\nfor details"
    no_skip: "Disable special handling of SkipTest exceptions."
    with_id: "Enable plugin TestId:  Activate to add a test id (like\\n#1) to each test name output. Activate with --failed\\nto rerun failing tests only.  [NOSE_WITH_ID]"
    id_file: "Store test ids found in test runs in this file.\\nDefault is the file .noseids in the working directory."
    failed: "Run the tests that failed in the last test run."
    processes: "Spread test run among this many processes. Set a\\nnumber equal to the number of processors or cores in\\nyour machine for best results. Pass a negative number\\nto have the number of processes automatically set to\\nthe number of cores. Passing 0 means to disable\\nparallel testing. Default is 0 unless NOSE_PROCESSES\\nis set. [NOSE_PROCESSES]"
    process_timeout: "Set timeout for return of results from each test\\nrunner process. Default is 10. [NOSE_PROCESS_TIMEOUT]"
    process_restart_worker: "If set, will restart each worker process once their\\ntests are done, this helps control memory leaks from\\nkilling the system. [NOSE_PROCESS_RESTARTWORKER]"
    with_x_unit: "Enable plugin Xunit: This plugin provides test results\\nin the standard XUnit XML format. [NOSE_WITH_XUNIT]"
    x_unit_file: "Path to xml file to store the xunit report in. Default\\nis nosetests.xml in the working directory\\n[NOSE_XUNIT_FILE]"
    x_unit_testsuite_name: "Name of the testsuite in the xunit xml, generated by\\nplugin. Default test suite name is nosetests."
    all_modules: "Enable plugin AllModules: Collect tests from all\\npython modules.  [NOSE_ALL_MODULES]"
    collect_only: "Enable collect-only:  Collect and output test names\\nonly, don't run any tests.  [COLLECT_ONLY]\\n"
    package: "--first-package-wins, --first-pkg-wins, --1st-pkg-wins"
    behavior_dot: "--no-byte-compile     Prevent nose from byte-compiling the source into .pyc"
    run: "--cover-tests         Include test modules in coverage report"
  }
  output {
    File out_stdout = stdout()
  }
}