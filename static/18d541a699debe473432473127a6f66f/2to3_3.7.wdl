version 1.0

task To337 {
  input {
    Boolean? doc_tests_only
    String? fix
    Int? processes
    String? no_fix
    Boolean? list_fixes
    Boolean? print_function
    Boolean? verbose
    Boolean? no_diffs
    Boolean? write
    Boolean? no_backups
    Directory? output_dir
    Boolean? write_unchanged_files
    String? add_suffix
    Int two_to_three
    File file_vertical_line_dir
  }
  command <<<
    _to3_3_7 \
      ~{two_to_three} \
      ~{file_vertical_line_dir} \
      ~{if (doc_tests_only) then "--doctests_only" else ""} \
      ~{if defined(fix) then ("--fix " +  '"' + fix + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(no_fix) then ("--nofix " +  '"' + no_fix + '"') else ""} \
      ~{if (list_fixes) then "--list-fixes" else ""} \
      ~{if (print_function) then "--print-function" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_diffs) then "--no-diffs" else ""} \
      ~{if (write) then "--write" else ""} \
      ~{if (no_backups) then "--nobackups" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (write_unchanged_files) then "--write-unchanged-files" else ""} \
      ~{if defined(add_suffix) then ("--add-suffix " +  '"' + add_suffix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    doc_tests_only: "Fix up doctests only"
    fix: "Each FIX specifies a transformation; default: all"
    processes: "Run 2to3 concurrently"
    no_fix: "Prevent a transformation from being run"
    list_fixes: "List available transformations"
    print_function: "Modify the grammar so that print() is a function"
    verbose: "More verbose logging"
    no_diffs: "Don't show diffs of the refactoring"
    write: "Write back modified files"
    no_backups: "Don't write backups for modified files"
    output_dir: "Put output files in this directory instead of\\noverwriting the input files.  Requires -n."
    write_unchanged_files: "Also write files even if no changes were required\\n(useful with --output-dir); implies -w."
    add_suffix: "Append this string to all output filenames. Requires\\n-n if non-empty.  ex: --add-suffix='3' will generate\\n.py3 files.\\n"
    two_to_three: ""
    file_vertical_line_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}