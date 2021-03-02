class: CommandLineTool
id: nosetests_2.7.cwl
inputs:
- id: in_plugins
  doc: "Output list of available plugins and exit. Combine\nwith higher verbosity\
    \ for greater detail"
  type: boolean?
  inputBinding:
    prefix: --plugins
- id: in_verbose
  doc: Be more verbose. [NOSE_VERBOSE]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_verbosity
  doc: Set verbosity; --verbosity=2 is the same as -v
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_quiet
  doc: Be less verbose
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_config
  doc: "Load configuration from config file(s). May be\nspecified multiple times;\
    \ in that case, all config\nfiles will be loaded and combined"
  type: File?
  inputBinding:
    prefix: --config
- id: in_where
  doc: "Look for tests in this directory. May be specified\nmultiple times. The first\
    \ directory passed will be\nused as the working directory, in place of the current\n\
    working directory, which is the default. Others will\nbe added to the list of\
    \ tests to execute. [NOSE_WHERE]"
  type: Directory?
  inputBinding:
    prefix: --where
- id: in_py_three_where
  doc: "Look for tests in this directory under Python 3.x.\nFunctions the same as\
    \ 'where', but only applies if\nrunning under Python 3.x or above.  Note that,\
    \ if\npresent under 3.x, this option completely replaces any\ndirectories specified\
    \ with 'where', so the 'where'\noption becomes ineffective. [NOSE_PY3WHERE]"
  type: long?
  inputBinding:
    prefix: --py3where
- id: in_test_match
  doc: "Files, directories, function names, and class names\nthat match this regular\
    \ expression are considered\ntests.  Default: (?:^|[\\b_\\./-])[Tt]est\n[NOSE_TESTMATCH]"
  type: string?
  inputBinding:
    prefix: --testmatch
- id: in_tests
  doc: "Run these tests (comma-separated list). This argument\nis useful mainly from\
    \ configuration files; on the\ncommand line, just pass the tests to run as additional\n\
    arguments with no switch."
  type: string?
  inputBinding:
    prefix: --tests
- id: in_debug
  doc: "Activate debug logging for one or more systems.\nAvailable debug loggers:\
    \ nose, nose.importer,\nnose.inspector, nose.plugins, nose.result and\nnose.selector.\
    \ Separate multiple names with a comma."
  type: string?
  inputBinding:
    prefix: --debug
- id: in_debug_log
  doc: 'Log debug messages to this file (default: sys.stderr)'
  type: File?
  inputBinding:
    prefix: --debug-log
- id: in_logging_config
  doc: "Load logging config from this file -- bypasses all\nother logging config settings."
  type: File?
  inputBinding:
    prefix: --logging-config
- id: in_ignore_files
  doc: "Completely ignore any file that matches this regular\nexpression. Takes precedence\
    \ over any other settings\nor plugins. Specifying this option will replace the\n\
    default setting. Specify this option multiple times to\nadd more regular expressions\
    \ [NOSE_IGNORE_FILES]"
  type: File?
  inputBinding:
    prefix: --ignore-files
- id: in_exclude
  doc: "Don't run tests that match regular expression\n[NOSE_EXCLUDE]"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: "This regular expression will be applied to files,\ndirectories, function names,\
    \ and class names for a\nchance to include additional tests that do not match\n\
    TESTMATCH.  Specify this option multiple times to add\nmore regular expressions\
    \ [NOSE_INCLUDE]"
  type: string?
  inputBinding:
    prefix: --include
- id: in_stop
  doc: Stop running tests after the first error or failure
  type: boolean?
  inputBinding:
    prefix: --stop
- id: in_no_path_adjustment
  doc: "Don't make any changes to sys.path when loading tests\n[NOSE_NOPATH]"
  type: boolean?
  inputBinding:
    prefix: --no-path-adjustment
- id: in_exe
  doc: "Look for tests in python modules that are executable.\nNormal behavior is\
    \ to exclude executable modules,\nsince they may not be import-safe [NOSE_INCLUDE_EXE]"
  type: boolean?
  inputBinding:
    prefix: --exe
- id: in_no_exe
  doc: "DO NOT look for tests in python modules that are\nexecutable. (The default\
    \ on the windows platform is to\ndo so.)"
  type: boolean?
  inputBinding:
    prefix: --noexe
- id: in_traverse_namespace
  doc: Traverse through all path entries of a namespace
  type: boolean?
  inputBinding:
    prefix: --traverse-namespace
- id: in_attr
  doc: "Run only tests that have attributes specified by ATTR\n[NOSE_ATTR]"
  type: string?
  inputBinding:
    prefix: --attr
- id: in_eval_attr
  doc: "Run only tests for whose attributes the Python\nexpression EXPR evaluates\
    \ to True [NOSE_EVAL_ATTR]"
  type: string?
  inputBinding:
    prefix: --eval-attr
- id: in_no_capture
  doc: "Don't capture stdout (any stdout output will be\nprinted immediately) [NOSE_NOCAPTURE]"
  type: boolean?
  inputBinding:
    prefix: --nocapture
- id: in_no_log_capture
  doc: "Disable logging capture plugin. Logging configuration\nwill be left intact.\
    \ [NOSE_NOLOGCAPTURE]"
  type: boolean?
  inputBinding:
    prefix: --nologcapture
- id: in_logging_format
  doc: "Specify custom format to print statements. Uses the\nsame format as used by\
    \ standard logging handlers.\n[NOSE_LOGFORMAT]"
  type: string?
  inputBinding:
    prefix: --logging-format
- id: in_logging_date_fmt
  doc: "Specify custom date/time format to print statements.\nUses the same format\
    \ as used by standard logging\nhandlers. [NOSE_LOGDATEFMT]"
  type: string?
  inputBinding:
    prefix: --logging-datefmt
- id: in_logging_filter
  doc: "Specify which statements to filter in/out. By default,\neverything is captured.\
    \ If the output is too verbose,\nuse this option to filter out needless output.\n\
    Example: filter=foo will capture statements issued\nONLY to  foo or foo.what.ever.sub\
    \ but not foobar or\nother logger. Specify multiple loggers with comma:\nfilter=foo,bar,baz.\
    \ If any logger name is prefixed\nwith a minus, eg filter=-foo, it will be excluded\n\
    rather than included. Default: exclude logging\nmessages from nose itself (-nose).\
    \ [NOSE_LOGFILTER]"
  type: string?
  inputBinding:
    prefix: --logging-filter
- id: in_logging_clear_handlers
  doc: Clear all other logging handlers
  type: boolean?
  inputBinding:
    prefix: --logging-clear-handlers
- id: in_logging_level
  doc: Set the log level to capture
  type: string?
  inputBinding:
    prefix: --logging-level
- id: in_with_coverage
  doc: "Enable plugin Coverage:  Activate a coverage report\nusing Ned Batchelder's\
    \ coverage module.\n[NOSE_WITH_COVERAGE]"
  type: boolean?
  inputBinding:
    prefix: --with-coverage
- id: in_cover_package
  doc: "Restrict coverage output to selected packages\n[NOSE_COVER_PACKAGE]"
  type: string?
  inputBinding:
    prefix: --cover-package
- id: in_cover_erase
  doc: Erase previously collected coverage statistics before
  type: boolean?
  inputBinding:
    prefix: --cover-erase
- id: in_cover_min_percentage
  doc: "Minimum percentage of coverage for tests to pass\n[NOSE_COVER_MIN_PERCENTAGE]"
  type: long?
  inputBinding:
    prefix: --cover-min-percentage
- id: in_cover_inclusive
  doc: "Include all python files under working directory in\ncoverage report.  Useful\
    \ for discovering holes in test\ncoverage if not all files are imported by the\
    \ test\nsuite. [NOSE_COVER_INCLUSIVE]"
  type: boolean?
  inputBinding:
    prefix: --cover-inclusive
- id: in_cover_html
  doc: Produce HTML coverage information
  type: boolean?
  inputBinding:
    prefix: --cover-html
- id: in_cover_html_dir
  doc: Produce HTML coverage information in dir
  type: string?
  inputBinding:
    prefix: --cover-html-dir
- id: in_cover_branches
  doc: "Include branch coverage in coverage report\n[NOSE_COVER_BRANCHES]"
  type: boolean?
  inputBinding:
    prefix: --cover-branches
- id: in_cover_xml
  doc: Produce XML coverage information
  type: boolean?
  inputBinding:
    prefix: --cover-xml
- id: in_cover_xml_file
  doc: Produce XML coverage information in file
  type: File?
  inputBinding:
    prefix: --cover-xml-file
- id: in_pdb
  doc: Drop into debugger on failures or errors
  type: boolean?
  inputBinding:
    prefix: --pdb
- id: in_pdb_failures
  doc: Drop into debugger on failures
  type: boolean?
  inputBinding:
    prefix: --pdb-failures
- id: in_pdb_errors
  doc: Drop into debugger on errors
  type: boolean?
  inputBinding:
    prefix: --pdb-errors
- id: in_no_deprecated
  doc: Disable special handling of DeprecatedTest exceptions.
  type: boolean?
  inputBinding:
    prefix: --no-deprecated
- id: in_with_doctest
  doc: "Enable plugin Doctest:  Activate doctest plugin to\nfind and run doctests\
    \ in non-test modules.\n[NOSE_WITH_DOCTEST]"
  type: boolean?
  inputBinding:
    prefix: --with-doctest
- id: in_doctest_tests
  doc: "Also look for doctests in test modules. Note that\nclasses, methods and functions\
    \ should have either\ndoctests or non-doctest tests, not both.\n[NOSE_DOCTEST_TESTS]"
  type: boolean?
  inputBinding:
    prefix: --doctest-tests
- id: in_doctest_extension
  doc: "Also look for doctests in files with this extension\n[NOSE_DOCTEST_EXTENSION]"
  type: string?
  inputBinding:
    prefix: --doctest-extension
- id: in_doctest_result_variable
  doc: "Change the variable name set to the result of the last\ninterpreter command\
    \ from the default '_'. Can be used\nto avoid conflicts with the _() function\
    \ used for text\ntranslation. [NOSE_DOCTEST_RESULT_VAR]"
  type: string?
  inputBinding:
    prefix: --doctest-result-variable
- id: in_doctest_fixtures
  doc: "Find fixtures for a doctest file in module with this\nname appended to the\
    \ base name of the doctest file"
  type: File?
  inputBinding:
    prefix: --doctest-fixtures
- id: in_doctest_options
  doc: "Specify options to pass to doctest. Eg.\n'+ELLIPSIS,+NORMALIZE_WHITESPACE'"
  type: string?
  inputBinding:
    prefix: --doctest-options
- id: in_with_isolation
  doc: "Enable plugin IsolationPlugin:  Activate the isolation\nplugin to isolate\
    \ changes to external modules to a\nsingle test module or package. The isolation\
    \ plugin\nresets the contents of sys.modules after each test\nmodule or package\
    \ runs to its state before the test.\nPLEASE NOTE that this plugin should not\
    \ be used with\nthe coverage plugin, or in any other case where module\nreloading\
    \ may produce undesirable side-effects.\n[NOSE_WITH_ISOLATION]"
  type: boolean?
  inputBinding:
    prefix: --with-isolation
- id: in_detailed_errors
  doc: "Add detail to error output by attempting to evaluate\nfailed asserts [NOSE_DETAILED_ERRORS]"
  type: boolean?
  inputBinding:
    prefix: --detailed-errors
- id: in_with_profile
  doc: "Enable plugin Profile:  Use this plugin to run tests\nusing the hotshot profiler.\
    \   [NOSE_WITH_PROFILE]"
  type: boolean?
  inputBinding:
    prefix: --with-profile
- id: in_profile_sort
  doc: Set sort order for profiler output
  type: string?
  inputBinding:
    prefix: --profile-sort
- id: in_profile_stats_file
  doc: "Profiler stats file; default is a new temp file on\neach run"
  type: File?
  inputBinding:
    prefix: --profile-stats-file
- id: in_profile_restrict
  doc: "Restrict profiler output. See help for pstats.Stats\nfor details"
  type: string?
  inputBinding:
    prefix: --profile-restrict
- id: in_no_skip
  doc: Disable special handling of SkipTest exceptions.
  type: boolean?
  inputBinding:
    prefix: --no-skip
- id: in_with_id
  doc: "Enable plugin TestId:  Activate to add a test id (like\n#1) to each test name\
    \ output. Activate with --failed\nto rerun failing tests only.  [NOSE_WITH_ID]"
  type: boolean?
  inputBinding:
    prefix: --with-id
- id: in_id_file
  doc: "Store test ids found in test runs in this file.\nDefault is the file .noseids\
    \ in the working directory."
  type: File?
  inputBinding:
    prefix: --id-file
- id: in_failed
  doc: Run the tests that failed in the last test run.
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_processes
  doc: "Spread test run among this many processes. Set a\nnumber equal to the number\
    \ of processors or cores in\nyour machine for best results. Pass a negative number\n\
    to have the number of processes automatically set to\nthe number of cores. Passing\
    \ 0 means to disable\nparallel testing. Default is 0 unless NOSE_PROCESSES\nis\
    \ set. [NOSE_PROCESSES]"
  type: long?
  inputBinding:
    prefix: --processes
- id: in_process_timeout
  doc: "Set timeout for return of results from each test\nrunner process. Default\
    \ is 10. [NOSE_PROCESS_TIMEOUT]"
  type: long?
  inputBinding:
    prefix: --process-timeout
- id: in_process_restart_worker
  doc: "If set, will restart each worker process once their\ntests are done, this\
    \ helps control memory leaks from\nkilling the system. [NOSE_PROCESS_RESTARTWORKER]"
  type: boolean?
  inputBinding:
    prefix: --process-restartworker
- id: in_with_x_unit
  doc: "Enable plugin Xunit: This plugin provides test results\nin the standard XUnit\
    \ XML format. [NOSE_WITH_XUNIT]"
  type: boolean?
  inputBinding:
    prefix: --with-xunit
- id: in_x_unit_file
  doc: "Path to xml file to store the xunit report in. Default\nis nosetests.xml in\
    \ the working directory\n[NOSE_XUNIT_FILE]"
  type: File?
  inputBinding:
    prefix: --xunit-file
- id: in_x_unit_testsuite_name
  doc: "Name of the testsuite in the xunit xml, generated by\nplugin. Default test\
    \ suite name is nosetests."
  type: string?
  inputBinding:
    prefix: --xunit-testsuite-name
- id: in_all_modules
  doc: "Enable plugin AllModules: Collect tests from all\npython modules.  [NOSE_ALL_MODULES]"
  type: boolean?
  inputBinding:
    prefix: --all-modules
- id: in_collect_only
  doc: "Enable collect-only:  Collect and output test names\nonly, don't run any tests.\
    \  [COLLECT_ONLY]\n"
  type: boolean?
  inputBinding:
    prefix: --collect-only
- id: in_package
  doc: --first-package-wins, --first-pkg-wins, --1st-pkg-wins
  type: string
  inputBinding:
    position: 0
- id: in_behavior_dot
  doc: --no-byte-compile     Prevent nose from byte-compiling the source into .pyc
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: --cover-tests         Include test modules in coverage report
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nosetests-2.7
