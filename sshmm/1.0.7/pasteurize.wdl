version 1.0

task Pasteurize {
  input {
    Boolean? all_imports
    String? fix
    String? processes
    String? no_fix
    Boolean? list_fixes
    Boolean? verbose
    Boolean? no_diffs
    Boolean? write
    Boolean? no_backups
  }
  command <<<
    pasteurize \
      ~{true="--all-imports" false="" all_imports} \
      ~{if defined(fix) then ("--fix " +  '"' + fix + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(no_fix) then ("--nofix " +  '"' + no_fix + '"') else ""} \
      ~{true="--list-fixes" false="" list_fixes} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--no-diffs" false="" no_diffs} \
      ~{true="--write" false="" write} \
      ~{true="--nobackups" false="" no_backups}
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
  }
}