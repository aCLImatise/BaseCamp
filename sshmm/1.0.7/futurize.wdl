version 1.0

task Futurize {
  input {
    Boolean? all_imports
    Boolean? stage_one
    Boolean? stage_two
    Boolean? both_stages
    Boolean? unicode_literals
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
    futurize \
      ~{true="--all-imports" false="" all_imports} \
      ~{true="--stage1" false="" stage_one} \
      ~{true="--stage2" false="" stage_two} \
      ~{true="--both-stages" false="" both_stages} \
      ~{true="--unicode-literals" false="" unicode_literals} \
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
    all_imports: "Add all __future__ and future imports to each module"
    stage_one: "Modernize Python 2 code only; no compatibility with Python 3 (or dependency on ``future``)"
    stage_two: "Take modernized (stage1) code and add a dependency on ``future`` to provide Py3 compatibility."
    both_stages: "Apply both stages 1 and 2"
    unicode_literals: "Add ``from __future__ import unicode_literals`` to implicitly convert all unadorned string literals '' into unicode strings"
    fix: "Each FIX specifies a transformation; default: all. Either use '-f division -f metaclass' etc. or use the fully-qualified module name: '-f lib2to3.fixes.fix_types -f libfuturize.fixes.fix_unicode_keep_u'"
    processes: "Run 2to3 concurrently"
    no_fix: "Prevent a fixer from being run."
    list_fixes: "List available transformations"
    print_function: "Modify the grammar so that print() is a function"
    verbose: "More verbose logging"
    no_diffs: "Don't show diffs of the refactoring"
    write: "Write back modified files"
    no_backups: "Don't write backups for modified files."
    output_dir: "Put output files in this directory instead of overwriting the input files.  Requires -n. For Python >= 2.7 only."
    write_unchanged_files: "Also write files even if no changes were required (useful with --output-dir); implies -w."
    add_suffix: "Append this string to all output filenames. Requires -n if non-empty. For Python >= 2.7 only.ex: --add- suffix='3' will generate .py3 files."
  }
}