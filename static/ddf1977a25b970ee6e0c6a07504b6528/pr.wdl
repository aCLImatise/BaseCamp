version 1.0

task Pr {
  input {
    Boolean? show_control_chars
    Boolean? double_space
    String? date_format
    Boolean? expand_chars_tabs
    Boolean? form_feed
    String? header
    Boolean? replace_spaces_tab
    Boolean? join_lines
    String? length
    Boolean? merge
    Boolean? number_lines_use
    String? first_line_number
    String? indent
    Boolean? no_file_warnings
    Boolean? turns_line_truncation
    Boolean? separate_columns_string
    Boolean? omit_header
    Boolean? omit_pagination
    Boolean? show_non_printing
    String? width
    String? page_width
    String? option
  }
  command <<<
    pr \
      ~{option} \
      ~{true="--show-control-chars" false="" show_control_chars} \
      ~{true="--double-space" false="" double_space} \
      ~{if defined(date_format) then ("--date-format " +  '"' + date_format + '"') else ""} \
      ~{true="-e" false="" expand_chars_tabs} \
      ~{true="--form-feed" false="" form_feed} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{true="-i" false="" replace_spaces_tab} \
      ~{true="--join-lines" false="" join_lines} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--merge" false="" merge} \
      ~{true="-n" false="" number_lines_use} \
      ~{if defined(first_line_number) then ("--first-line-number " +  '"' + first_line_number + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{true="--no-file-warnings" false="" no_file_warnings} \
      ~{true="-s" false="" turns_line_truncation} \
      ~{true="-S" false="" separate_columns_string} \
      ~{true="--omit-header" false="" omit_header} \
      ~{true="--omit-pagination" false="" omit_pagination} \
      ~{true="--show-nonprinting" false="" show_non_printing} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(page_width) then ("--page-width " +  '"' + page_width + '"') else ""}
  >>>
  parameter_meta {
    show_control_chars: "use hat notation (^G) and octal backslash notation"
    double_space: "double space the output"
    date_format: "use FORMAT for the header date"
    expand_chars_tabs: "[CHAR[WIDTH]], --expand-tabs[=CHAR[WIDTH]] expand input CHARs (TABs) to tab WIDTH (8)"
    form_feed: "use form feeds instead of newlines to separate pages (by a 3-line page header with -F or a 5-line header and trailer without -F)"
    header: "use a centred HEADER instead of filename in page header, -h \"\" prints a blank line, don't use -h\"\""
    replace_spaces_tab: "[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]] replace spaces with CHARs (TABs) to tab WIDTH (8)"
    join_lines: "merge full lines, turns off -W line truncation, no column alignment, --sep-string[=STRING] sets separators"
    length: "set the page length to PAGE_LENGTH (66) lines (default number of lines of text 56, and with -F 63). implies -t if PAGE_LENGTH <= 10"
    merge: "print all files in parallel, one in each column, truncate lines, but join lines of full length with -J"
    number_lines_use: "[SEP[DIGITS]], --number-lines[=SEP[DIGITS]] number lines, use DIGITS (5) digits, then SEP (TAB), default counting starts with 1st line of input file"
    first_line_number: "start counting with NUMBER at 1st line of first page printed (see +FIRST_PAGE)"
    indent: "offset each line with MARGIN (zero) spaces, do not affect -w or -W, MARGIN will be added to PAGE_WIDTH"
    no_file_warnings: "omit warning when a file cannot be opened"
    turns_line_truncation: "[CHAR], --separator[=CHAR] separate columns by a single character, default for CHAR is the <TAB> character without -w and 'no char' with -w. -s[CHAR] turns off line truncation of all 3 column options (-COLUMN|-a -COLUMN|-m) except -w is set"
    separate_columns_string: "[STRING], --sep-string[=STRING] separate columns by STRING, without -S: Default separator <TAB> with -J and <space> otherwise (same as -S\" \"), no effect on column options"
    omit_header: "omit page headers and trailers; implied if PAGE_LENGTH <= 10"
    omit_pagination: "omit page headers and trailers, eliminate any pagination by form feeds set in input files"
    show_non_printing: "use octal backslash notation"
    width: "set page width to PAGE_WIDTH (72) characters for multiple text-column output only, -s[char] turns off (72)"
    page_width: "set page width to PAGE_WIDTH (72) characters always, truncate lines, except -J option is set, no interference with -S or -s"
    option: ""
  }
}