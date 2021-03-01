class: CommandLineTool
id: prove.cwl
inputs:
- id: in_verbose
  doc: Print all test lines.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_lib
  doc: Add 'lib' to the path for your tests (-Ilib).
  type: boolean?
  inputBinding:
    prefix: --lib
- id: in_blib
  doc: "Add 'blib/lib' and 'blib/arch' to the path for\nyour tests"
  type: boolean?
  inputBinding:
    prefix: --blib
- id: in_shuffle
  doc: Run the tests in random order.
  type: boolean?
  inputBinding:
    prefix: --shuffle
- id: in_color
  doc: Colored test output (default).
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_no_color
  doc: Do not color test output.
  type: boolean?
  inputBinding:
    prefix: --nocolor
- id: in_count
  doc: "Show the X/Y test count when not verbose\n(default)"
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_no_count
  doc: Disable the X/Y test count.
  type: boolean?
  inputBinding:
    prefix: --nocount
- id: in_dry
  doc: Dry run. Show test that would have run.
  type: boolean?
  inputBinding:
    prefix: --dry
- id: in_failures
  doc: Show failed tests.
  type: boolean?
  inputBinding:
    prefix: --failures
- id: in_comments
  doc: Show comments.
  type: boolean?
  inputBinding:
    prefix: --comments
- id: in_ignore_exit
  doc: Ignore exit status from test scripts.
  type: boolean?
  inputBinding:
    prefix: --ignore-exit
- id: in_merge
  doc: Merge test scripts' STDERR with their STDOUT.
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_recurse
  doc: Recursively descend into directories.
  type: boolean?
  inputBinding:
    prefix: --recurse
- id: in_reverse
  doc: Run the tests in reverse order.
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_suppress_test_output
  doc: Suppress some test output while running tests.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_only_print_summary
  doc: Only print summary results.
  type: boolean?
  inputBinding:
    prefix: --QUIET
- id: in_parse
  doc: Show full list of TAP parse errors, if any.
  type: boolean?
  inputBinding:
    prefix: --parse
- id: in_directives
  doc: Only show results with TODO or SKIP directives.
  type: boolean?
  inputBinding:
    prefix: --directives
- id: in_timer
  doc: Print elapsed time after each test.
  type: boolean?
  inputBinding:
    prefix: --timer
- id: in_trap
  doc: Trap Ctrl-C and print summary on interrupt.
  type: boolean?
  inputBinding:
    prefix: --trap
- id: in_normalize
  doc: Normalize TAP output in verbose output
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_enable_tainting_checks
  doc: Enable tainting checks.
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_enable_tainting_warnings
  doc: Enable tainting warnings.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_enable_fatal_warnings
  doc: Enable fatal warnings.
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_enable_warnings
  doc: Enable warnings.
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_man
  doc: Longer manpage for prove
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_norc
  doc: Don't process default .proverc
  type: boolean?
  inputBinding:
    prefix: --norc
- id: in_library_paths_include
  doc: Library paths to include.
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_load_plugin_searches
  doc: Load plugin (searches App::Prove::Plugin::*.)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_load_a_module
  doc: Load a module.
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_exec
  doc: "Interpreter to run the tests ('' for compiled\ntests.)"
  type: boolean?
  inputBinding:
    prefix: --exec
- id: in_ext
  doc: Set the extension for tests (default '.t')
  type: boolean?
  inputBinding:
    prefix: --ext
- id: in_harness
  doc: Define test harness to use.  See TAP::Harness.
  type: boolean?
  inputBinding:
    prefix: --harness
- id: in_formatter
  doc: Result formatter to use. See FORMATTERS.
  type: boolean?
  inputBinding:
    prefix: --formatter
- id: in_source
  doc: "Load and/or configure a SourceHandler. See\nSOURCE HANDLERS."
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_archive
  doc: Store the resulting TAP in an archive file.
  type: File?
  inputBinding:
    prefix: --archive
- id: in_jobs
  doc: Run N test jobs in parallel (try 9.)
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_state
  doc: Control prove's persistent state.
  type: string?
  inputBinding:
    prefix: --state
- id: in_rc
  doc: Process options from rcfile
  type: string?
  inputBinding:
    prefix: --rc
- id: in_rules
  doc: Rules for parallel vs sequential processing.
  type: boolean?
  inputBinding:
    prefix: --rules
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prove
