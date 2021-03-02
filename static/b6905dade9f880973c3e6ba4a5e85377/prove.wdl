version 1.0

task Prove {
  input {
    Boolean? verbose
    Boolean? lib
    Boolean? blib
    Boolean? shuffle
    Boolean? color
    Boolean? no_color
    Boolean? count
    Boolean? no_count
    Boolean? dry
    Boolean? failures
    Boolean? comments
    Boolean? ignore_exit
    Boolean? merge
    Boolean? recurse
    Boolean? reverse
    Boolean? suppress_test_output
    Boolean? only_print_summary
    Boolean? parse
    Boolean? directives
    Boolean? timer
    Boolean? trap
    Boolean? normalize
    Boolean? enable_tainting_checks
    Boolean? enable_tainting_warnings
    Boolean? enable_fatal_warnings
    Boolean? enable_warnings
    Boolean? man
    Boolean? norc
    Boolean? library_paths_include
    Boolean? load_plugin_searches
    Boolean? load_a_module
    Boolean? exec
    Boolean? ext
    Boolean? harness
    Boolean? formatter
    Boolean? source
    File? archive
    Int? jobs
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
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (lib) then "--lib" else ""} \
      ~{if (blib) then "--blib" else ""} \
      ~{if (shuffle) then "--shuffle" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (no_color) then "--nocolor" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (no_count) then "--nocount" else ""} \
      ~{if (dry) then "--dry" else ""} \
      ~{if (failures) then "--failures" else ""} \
      ~{if (comments) then "--comments" else ""} \
      ~{if (ignore_exit) then "--ignore-exit" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (recurse) then "--recurse" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (suppress_test_output) then "--quiet" else ""} \
      ~{if (only_print_summary) then "--QUIET" else ""} \
      ~{if (parse) then "--parse" else ""} \
      ~{if (directives) then "--directives" else ""} \
      ~{if (timer) then "--timer" else ""} \
      ~{if (trap) then "--trap" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (enable_tainting_checks) then "-T" else ""} \
      ~{if (enable_tainting_warnings) then "-t" else ""} \
      ~{if (enable_fatal_warnings) then "-W" else ""} \
      ~{if (enable_warnings) then "-w" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if (library_paths_include) then "-I" else ""} \
      ~{if (load_plugin_searches) then "-P" else ""} \
      ~{if (load_a_module) then "-M" else ""} \
      ~{if (exec) then "--exec" else ""} \
      ~{if (ext) then "--ext" else ""} \
      ~{if (harness) then "--harness" else ""} \
      ~{if (formatter) then "--formatter" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if defined(archive) then ("--archive " +  '"' + archive + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(rc) then ("--rc " +  '"' + rc + '"') else ""} \
      ~{if (rules) then "--rules" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print all test lines."
    lib: "Add 'lib' to the path for your tests (-Ilib)."
    blib: "Add 'blib/lib' and 'blib/arch' to the path for\\nyour tests"
    shuffle: "Run the tests in random order."
    color: "Colored test output (default)."
    no_color: "Do not color test output."
    count: "Show the X/Y test count when not verbose\\n(default)"
    no_count: "Disable the X/Y test count."
    dry: "Dry run. Show test that would have run."
    failures: "Show failed tests."
    comments: "Show comments."
    ignore_exit: "Ignore exit status from test scripts."
    merge: "Merge test scripts' STDERR with their STDOUT."
    recurse: "Recursively descend into directories."
    reverse: "Run the tests in reverse order."
    suppress_test_output: "Suppress some test output while running tests."
    only_print_summary: "Only print summary results."
    parse: "Show full list of TAP parse errors, if any."
    directives: "Only show results with TODO or SKIP directives."
    timer: "Print elapsed time after each test."
    trap: "Trap Ctrl-C and print summary on interrupt."
    normalize: "Normalize TAP output in verbose output"
    enable_tainting_checks: "Enable tainting checks."
    enable_tainting_warnings: "Enable tainting warnings."
    enable_fatal_warnings: "Enable fatal warnings."
    enable_warnings: "Enable warnings."
    man: "Longer manpage for prove"
    norc: "Don't process default .proverc"
    library_paths_include: "Library paths to include."
    load_plugin_searches: "Load plugin (searches App::Prove::Plugin::*.)"
    load_a_module: "Load a module."
    exec: "Interpreter to run the tests ('' for compiled\\ntests.)"
    ext: "Set the extension for tests (default '.t')"
    harness: "Define test harness to use.  See TAP::Harness."
    formatter: "Result formatter to use. See FORMATTERS."
    source: "Load and/or configure a SourceHandler. See\\nSOURCE HANDLERS."
    archive: "Store the resulting TAP in an archive file."
    jobs: "Run N test jobs in parallel (try 9.)"
    state: "Control prove's persistent state."
    rc: "Process options from rcfile"
    rules: "Rules for parallel vs sequential processing."
    files: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}