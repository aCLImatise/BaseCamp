version 1.0

task Futurize {
  input {
    Boolean? all_imports
    Boolean? stage_one
    Boolean? stage_two
    Boolean? both_stages
    Boolean? unicode_literals
    Int? fix
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
    File file_vertical_line_dir
  }
  command <<<
    futurize \
      ~{file_vertical_line_dir} \
      ~{if (all_imports) then "--all-imports" else ""} \
      ~{if (stage_one) then "--stage1" else ""} \
      ~{if (stage_two) then "--stage2" else ""} \
      ~{if (both_stages) then "--both-stages" else ""} \
      ~{if (unicode_literals) then "--unicode-literals" else ""} \
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
  parameter_meta {
    all_imports: "Add all __future__ and future imports to each module"
    stage_one: "Modernize Python 2 code only; no compatibility with\\nPython 3 (or dependency on ``future``)"
    stage_two: "Take modernized (stage1) code and add a dependency on\\n``future`` to provide Py3 compatibility."
    both_stages: "Apply both stages 1 and 2"
    unicode_literals: "Add ``from __future__ import unicode_literals`` to\\nimplicitly convert all unadorned string literals ''\\ninto unicode strings"
    fix: "Each FIX specifies a transformation; default: all.\\nEither use '-f division -f metaclass' etc. or use the\\nfully-qualified module name: '-f\\nlib2to3.fixes.fix_types -f\\nlibfuturize.fixes.fix_unicode_keep_u'"
    processes: "Run 2to3 concurrently"
    no_fix: "Prevent a fixer from being run."
    list_fixes: "List available transformations"
    print_function: "Modify the grammar so that print() is a function"
    verbose: "More verbose logging"
    no_diffs: "Don't show diffs of the refactoring"
    write: "Write back modified files"
    no_backups: "Don't write backups for modified files."
    output_dir: "Put output files in this directory instead of\\noverwriting the input files.  Requires -n. For Python\\n>= 2.7 only."
    write_unchanged_files: "Also write files even if no changes were required\\n(useful with --output-dir); implies -w."
    add_suffix: "Append this string to all output filenames. Requires\\n-n if non-empty. For Python >= 2.7 only.ex: --add-\\nsuffix='3' will generate .py3 files.\\n"
    file_vertical_line_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}