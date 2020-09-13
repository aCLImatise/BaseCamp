version 1.0

task Pasteurize {
  input {
    Boolean? all_imports
    String? fix
    Int? processes
    String? no_fix
    Boolean? list_fixes
    Boolean? verbose
    Boolean? no_diffs
    Boolean? write
    Boolean? no_backups
    File file_vertical_line_dir
  }
  command <<<
    pasteurize \
      ~{file_vertical_line_dir} \
      ~{if (all_imports) then "--all-imports" else ""} \
      ~{if defined(fix) then ("--fix " +  '"' + fix + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(no_fix) then ("--nofix " +  '"' + no_fix + '"') else ""} \
      ~{if (list_fixes) then "--list-fixes" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_diffs) then "--no-diffs" else ""} \
      ~{if (write) then "--write" else ""} \
      ~{if (no_backups) then "--nobackups" else ""}
  >>>
  parameter_meta {
    all_imports: "Adds all __future__ and future imports to each module"
    fix: "Each FIX specifies a transformation; default: all"
    processes: "Run 2to3 concurrently"
    no_fix: "Prevent a fixer from being run."
    list_fixes: "List available transformations"
    verbose: "More verbose logging"
    no_diffs: "Don't show diffs of the refactoring"
    write: "Write back modified files"
    no_backups: "Don't write backups for modified files."
    file_vertical_line_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}