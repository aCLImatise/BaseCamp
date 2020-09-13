version 1.0

task Diff {
  input {
    Boolean? normal
    Boolean? brief
    Boolean? report_identical_files
    Int? context
    Int? unified
    Boolean? ed
    Boolean? rcs
    Boolean? side_by_side
    Int? width
    Boolean? left_column
    Boolean? suppress_common_lines
    Boolean? show_c_function
    String? show_function_line
    File? label
    Boolean? expand_tabs
    Boolean? initial_tab
    Int? tab_size
    Boolean? suppress_blank_empty
    Boolean? paginate
    Boolean? recursive
    Boolean? no_dereference
    Boolean? new_file
    Boolean? unidirectional_new_file
    Boolean? ignore_file_name_case
    Boolean? no_ignore_file_name_case
    String? exclude
    File? exclude_from
    File? starting_file
    File? from_file
    File? to_file
    Boolean? ignore_case
    Boolean? ignore_tab_expansion
    Boolean? ignore_trailing_space
    Boolean? ignore_space_change
    Boolean? ignore_all_space
    Boolean? ignore_blank_lines
    String? ignore_matching_lines
    Boolean? text
    Boolean? strip_trailing_cr
    File? ifdef
    String? g_type_group_format
    String? line_format
    String? ltype_line_format
    Boolean? minimal
    Int? horizon_lines
    Boolean? speed_large_files
    Boolean? color
    String? palette
  }
  command <<<
    diff \
      ~{if (normal) then "--normal" else ""} \
      ~{if (brief) then "--brief" else ""} \
      ~{if (report_identical_files) then "--report-identical-files" else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if defined(unified) then ("--unified " +  '"' + unified + '"') else ""} \
      ~{if (ed) then "--ed" else ""} \
      ~{if (rcs) then "--rcs" else ""} \
      ~{if (side_by_side) then "--side-by-side" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (left_column) then "--left-column" else ""} \
      ~{if (suppress_common_lines) then "--suppress-common-lines" else ""} \
      ~{if (show_c_function) then "--show-c-function" else ""} \
      ~{if defined(show_function_line) then ("--show-function-line " +  '"' + show_function_line + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if (expand_tabs) then "--expand-tabs" else ""} \
      ~{if (initial_tab) then "--initial-tab" else ""} \
      ~{if defined(tab_size) then ("--tabsize " +  '"' + tab_size + '"') else ""} \
      ~{if (suppress_blank_empty) then "--suppress-blank-empty" else ""} \
      ~{if (paginate) then "--paginate" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (no_dereference) then "--no-dereference" else ""} \
      ~{if (new_file) then "--new-file" else ""} \
      ~{if (unidirectional_new_file) then "--unidirectional-new-file" else ""} \
      ~{if (ignore_file_name_case) then "--ignore-file-name-case" else ""} \
      ~{if (no_ignore_file_name_case) then "--no-ignore-file-name-case" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_from) then ("--exclude-from " +  '"' + exclude_from + '"') else ""} \
      ~{if defined(starting_file) then ("--starting-file " +  '"' + starting_file + '"') else ""} \
      ~{if defined(from_file) then ("--from-file " +  '"' + from_file + '"') else ""} \
      ~{if defined(to_file) then ("--to-file " +  '"' + to_file + '"') else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (ignore_tab_expansion) then "--ignore-tab-expansion" else ""} \
      ~{if (ignore_trailing_space) then "--ignore-trailing-space" else ""} \
      ~{if (ignore_space_change) then "--ignore-space-change" else ""} \
      ~{if (ignore_all_space) then "--ignore-all-space" else ""} \
      ~{if (ignore_blank_lines) then "--ignore-blank-lines" else ""} \
      ~{if defined(ignore_matching_lines) then ("--ignore-matching-lines " +  '"' + ignore_matching_lines + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (strip_trailing_cr) then "--strip-trailing-cr" else ""} \
      ~{if defined(ifdef) then ("--ifdef " +  '"' + ifdef + '"') else ""} \
      ~{if defined(g_type_group_format) then ("--GTYPE-group-format " +  '"' + g_type_group_format + '"') else ""} \
      ~{if defined(line_format) then ("--line-format " +  '"' + line_format + '"') else ""} \
      ~{if defined(ltype_line_format) then ("--LTYPE-line-format " +  '"' + ltype_line_format + '"') else ""} \
      ~{if (minimal) then "--minimal" else ""} \
      ~{if defined(horizon_lines) then ("--horizon-lines " +  '"' + horizon_lines + '"') else ""} \
      ~{if (speed_large_files) then "--speed-large-files" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""}
  >>>
  parameter_meta {
    normal: "output a normal diff (the default)"
    brief: "report only when files differ"
    report_identical_files: "report when two files are the same"
    context: "[=NUM]   output NUM (default 3) lines of copied context"
    unified: "[=NUM]   output NUM (default 3) lines of unified context"
    ed: "output an ed script"
    rcs: "output an RCS format diff"
    side_by_side: "output in two columns"
    width: "output at most NUM (default 130) print columns"
    left_column: "output only the left column of common lines"
    suppress_common_lines: "do not output common lines"
    show_c_function: "show which C function each change is in"
    show_function_line: "show the most recent line matching RE"
    label: "use LABEL instead of file name and timestamp\\n(can be repeated)"
    expand_tabs: "expand tabs to spaces in output"
    initial_tab: "make tabs line up by prepending a tab"
    tab_size: "tab stops every NUM (default 8) print columns"
    suppress_blank_empty: "suppress space or tab before empty output lines"
    paginate: "pass output through 'pr' to paginate it"
    recursive: "recursively compare any subdirectories found"
    no_dereference: "don't follow symbolic links"
    new_file: "treat absent files as empty"
    unidirectional_new_file: "treat absent first files as empty"
    ignore_file_name_case: "ignore case when comparing file names"
    no_ignore_file_name_case: "consider case when comparing file names"
    exclude: "exclude files that match PAT"
    exclude_from: "exclude files that match any pattern in FILE"
    starting_file: "start with FILE when comparing directories"
    from_file: "compare FILE1 to all operands;\\nFILE1 can be a directory"
    to_file: "compare all operands to FILE2;\\nFILE2 can be a directory"
    ignore_case: "ignore case differences in file contents"
    ignore_tab_expansion: "ignore changes due to tab expansion"
    ignore_trailing_space: "ignore white space at line end"
    ignore_space_change: "ignore changes in the amount of white space"
    ignore_all_space: "ignore all white space"
    ignore_blank_lines: "ignore changes where lines are all blank"
    ignore_matching_lines: "ignore changes where all lines match RE"
    text: "treat all files as text"
    strip_trailing_cr: "strip trailing carriage return on input"
    ifdef: "output merged file with '#ifdef NAME' diffs"
    g_type_group_format: "format GTYPE input groups with GFMT"
    line_format: "format all input lines with LFMT"
    ltype_line_format: "format LTYPE input lines with LFMT"
    minimal: "try hard to find a smaller set of changes"
    horizon_lines: "keep NUM lines of the common prefix and suffix"
    speed_large_files: "assume large files and many scattered small changes"
    color: "[=WHEN]       colorize the output; WHEN can be 'never', 'always',\\nor 'auto' (the default)"
    palette: "the colors to use when --color is active; PALETTE is\\na colon-separated list of terminfo capabilities"
  }
  output {
    File out_stdout = stdout()
    File out_ifdef = "${in_ifdef}"
  }
}