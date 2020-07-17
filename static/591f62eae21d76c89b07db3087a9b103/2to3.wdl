version 1.0

task 2to3 {
  input {
    Boolean? doc_tests_only
    String? fix
    String? processes
    String? no_fix
    Boolean? list_fixes
    Boolean? print_function
    Boolean? verbose
    Boolean? no_diffs
    Boolean? write
    Boolean? no_backups
    String? output_dir
    Boolean? write_unchanged_files
    String? add_suffix
  }
  command <<<
    2to3 \
      ~{true="--doctests_only" false="" doc_tests_only} \
      ~{if defined(fix) then ("--fix " +  '"' + fix + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(no_fix) then ("--nofix " +  '"' + no_fix + '"') else ""} \
      ~{true="--list-fixes" false="" list_fixes} \
      ~{true="--print-function" false="" print_function} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--no-diffs" false="" no_diffs} \
      ~{true="--write" false="" write} \
      ~{true="--nobackups" false="" no_backups} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--write-unchanged-files" false="" write_unchanged_files} \
      ~{if defined(add_suffix) then ("--add-suffix " +  '"' + add_suffix + '"') else ""}
  >>>
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
    output_dir: "Put output files in this directory instead of overwriting the input files.  Requires -n."
    write_unchanged_files: "Also write files even if no changes were required (useful with --output-dir); implies -w."
    add_suffix: "Append this string to all output filenames. Requires -n if non-empty.  ex: --add-suffix='3' will generate .py3 files."
  }
}