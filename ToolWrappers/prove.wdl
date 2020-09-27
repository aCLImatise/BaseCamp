version 1.0

task Prove {
  input {
    Boolean? _verbose_print
    Boolean? _lib_add
    Boolean? _blib_add
    Boolean? _shuffle_run
    Boolean? _color_default
    Boolean? no_color
    Boolean? count
    Boolean? no_count
    Boolean? _dry_test
    Boolean? _failures_show
    Boolean? _comments_show
    Boolean? ignore_exit
    Boolean? _merge_stderr
    Boolean? _recurse_recursively
    Boolean? reverse
    Boolean? quiet_suppress_output
    Boolean? _quiet_results
    Boolean? _parse_show
    Boolean? directives
    Boolean? timer
    Boolean? trap
    Boolean? normalize
    Boolean? enable_tainting_checks
    Boolean? enable_tainting_warnings
    Boolean? enable_fatal_warnings
    Boolean? enable_warnings
    Boolean? _version_display
    Boolean? _man_longer
    Boolean? norc
    Boolean? library_paths_include
    Boolean? load_plugin_searches
    Boolean? load_a_module
    Boolean? _exec_interpreter
    Boolean? ext
    Boolean? harness
    Boolean? formatter
    Boolean? source
    File? _archive_outtgz
    Boolean? _jobs_n
    String? state
    String? rc
    Boolean? rules
    String? files
    String? or
  }
  command <<<
    prove \
      ~{files} \
      ~{or} \
      ~{if (_verbose_print) then "-v" else ""} \
      ~{if (_lib_add) then "-l" else ""} \
      ~{if (_blib_add) then "-b" else ""} \
      ~{if (_shuffle_run) then "-s" else ""} \
      ~{if (_color_default) then "-c" else ""} \
      ~{if (no_color) then "--nocolor" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (no_count) then "--nocount" else ""} \
      ~{if (_dry_test) then "-D" else ""} \
      ~{if (_failures_show) then "-f" else ""} \
      ~{if (_comments_show) then "-o" else ""} \
      ~{if (ignore_exit) then "--ignore-exit" else ""} \
      ~{if (_merge_stderr) then "-m" else ""} \
      ~{if (_recurse_recursively) then "-r" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (quiet_suppress_output) then "-q" else ""} \
      ~{if (_quiet_results) then "-Q" else ""} \
      ~{if (_parse_show) then "-p" else ""} \
      ~{if (directives) then "--directives" else ""} \
      ~{if (timer) then "--timer" else ""} \
      ~{if (trap) then "--trap" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (enable_tainting_checks) then "-T" else ""} \
      ~{if (enable_tainting_warnings) then "-t" else ""} \
      ~{if (enable_fatal_warnings) then "-W" else ""} \
      ~{if (enable_warnings) then "-w" else ""} \
      ~{if (_version_display) then "-V" else ""} \
      ~{if (_man_longer) then "-H" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if (library_paths_include) then "-I" else ""} \
      ~{if (load_plugin_searches) then "-P" else ""} \
      ~{if (load_a_module) then "-M" else ""} \
      ~{if (_exec_interpreter) then "-e" else ""} \
      ~{if (ext) then "--ext" else ""} \
      ~{if (harness) then "--harness" else ""} \
      ~{if (formatter) then "--formatter" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (_archive_outtgz) then "-a" else ""} \
      ~{if (_jobs_n) then "-j" else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(rc) then ("--rc " +  '"' + rc + '"') else ""} \
      ~{if (rules) then "--rules" else ""}
  >>>
  parameter_meta {
    _verbose_print: ",  --verbose         Print all test lines."
    _lib_add: ",  --lib             Add 'lib' to the path for your tests (-Ilib)."
    _blib_add: ",  --blib            Add 'blib/lib' and 'blib/arch' to the path for\\nyour tests"
    _shuffle_run: ",  --shuffle         Run the tests in random order."
    _color_default: ",  --color           Colored test output (default)."
    no_color: "Do not color test output."
    count: "Show the X/Y test count when not verbose\\n(default)"
    no_count: "Disable the X/Y test count."
    _dry_test: "--dry             Dry run. Show test that would have run."
    _failures_show: ",  --failures        Show failed tests."
    _comments_show: ",  --comments        Show comments."
    ignore_exit: "Ignore exit status from test scripts."
    _merge_stderr: ",  --merge           Merge test scripts' STDERR with their STDOUT."
    _recurse_recursively: ",  --recurse         Recursively descend into directories."
    reverse: "Run the tests in reverse order."
    quiet_suppress_output: ",  --quiet           Suppress some test output while running tests."
    _quiet_results: ",  --QUIET           Only print summary results."
    _parse_show: ",  --parse           Show full list of TAP parse errors, if any."
    directives: "Only show results with TODO or SKIP directives."
    timer: "Print elapsed time after each test."
    trap: "Trap Ctrl-C and print summary on interrupt."
    normalize: "Normalize TAP output in verbose output"
    enable_tainting_checks: "Enable tainting checks."
    enable_tainting_warnings: "Enable tainting warnings."
    enable_fatal_warnings: "Enable fatal warnings."
    enable_warnings: "Enable warnings."
    _version_display: ",  --version         Display the version"
    _man_longer: ",  --man             Longer manpage for prove"
    norc: "Don't process default .proverc"
    library_paths_include: "Library paths to include."
    load_plugin_searches: "Load plugin (searches App::Prove::Plugin::*.)"
    load_a_module: "Load a module."
    _exec_interpreter: ",  --exec            Interpreter to run the tests ('' for compiled\\ntests.)"
    ext: "Set the extension for tests (default '.t')"
    harness: "Define test harness to use.  See TAP::Harness."
    formatter: "Result formatter to use. See FORMATTERS."
    source: "Load and/or configure a SourceHandler. See\\nSOURCE HANDLERS."
    _archive_outtgz: ",  --archive out.tgz Store the resulting TAP in an archive file."
    _jobs_n: ",  --jobs N          Run N test jobs in parallel (try 9.)"
    state: "Control prove's persistent state."
    rc: "Process options from rcfile"
    rules: "Rules for parallel vs sequential processing."
    files: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
    File out__archive_outtgz = "${in__archive_outtgz}"
  }
}