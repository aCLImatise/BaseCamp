version 1.0

task Pycodestyle {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? repeat
    Boolean? first
    String? exclude
    File? filename
    Int? select
    Int? ignore
    Boolean? show_source
    Boolean? show_pep_eight
    Boolean? statistics
    Boolean? count
    Int? max_line_length
    Boolean? hang_closing
    String? format
    Boolean? diff
    Boolean? benchmark
    File? config
    Int pep_eight
    String var_input
  }
  command <<<
    pycodestyle \
      ~{pep_eight} \
      ~{var_input} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (first) then "--first" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (show_source) then "--show-source" else ""} \
      ~{if (show_pep_eight) then "--show-pep8" else ""} \
      ~{if (statistics) then "--statistics" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if defined(max_line_length) then ("--max-line-length " +  '"' + max_line_length + '"') else ""} \
      ~{if (hang_closing) then "--hang-closing" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (benchmark) then "--benchmark" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    verbose: "print status messages, or debug with -vv"
    quiet: "report only file names, or nothing with -qq"
    repeat: "(obsolete) show all occurrences of the same error"
    first: "show first occurrence of each error"
    exclude: "exclude files or directories which match these comma\\nseparated patterns (default:\\n.svn,CVS,.bzr,.hg,.git,__pycache__,.tox)"
    filename: "when parsing directories, only check filenames matching\\nthese comma separated patterns (default: *.py)"
    select: "select errors and warnings (e.g. E,W6)"
    ignore: "skip errors and warnings (e.g. E4,W) (default:\\nE121,E123,E126,E226,E24,E704,W503)"
    show_source: "show source code for each error"
    show_pep_eight: "show text of PEP 8 for each error (implies --first)"
    statistics: "count errors and warnings"
    count: "print total number of errors and warnings to standard\\nerror and set exit code to 1 if total is not null"
    max_line_length: "set maximum allowed line length (default: 79)"
    hang_closing: "hang closing bracket instead of matching indentation of\\nopening bracket's line"
    format: "set the error format [default|pylint|<custom>]"
    diff: "report changes only within line number ranges in the\\nunified diff received on STDIN"
    benchmark: "measure processing speed"
    config: "user config file location"
    pep_eight: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}