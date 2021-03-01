version 1.0

task Pr {
  input {
    Int? columns
    Boolean? across
    Boolean? show_control_chars
    Boolean? double_space
    String? date_format
    Boolean? expand_chars_tabs
    Boolean? form_feed
    File? header
    Boolean? replace_spaces_tab
    Boolean? join_lines
    Int? length
    Boolean? merge
    Boolean? number_lines_use
    Int? first_line_number
    String? indent
    Boolean? no_file_warnings
    Boolean? separate_columns_single
    Boolean? separate_columns_spaceotherwise
    Boolean? omit_header
    Boolean? omit_pagination
    Boolean? show_non_printing
    Int? width
    Int? page_width
  }
  command <<<
    pr \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if (across) then "--across" else ""} \
      ~{if (show_control_chars) then "--show-control-chars" else ""} \
      ~{if (double_space) then "--double-space" else ""} \
      ~{if defined(date_format) then ("--date-format " +  '"' + date_format + '"') else ""} \
      ~{if (expand_chars_tabs) then "-e" else ""} \
      ~{if (form_feed) then "--form-feed" else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if (replace_spaces_tab) then "-i" else ""} \
      ~{if (join_lines) then "--join-lines" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (number_lines_use) then "-n" else ""} \
      ~{if defined(first_line_number) then ("--first-line-number " +  '"' + first_line_number + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (no_file_warnings) then "--no-file-warnings" else ""} \
      ~{if (separate_columns_single) then "-s" else ""} \
      ~{if (separate_columns_spaceotherwise) then "-S" else ""} \
      ~{if (omit_header) then "--omit-header" else ""} \
      ~{if (omit_pagination) then "--omit-pagination" else ""} \
      ~{if (show_non_printing) then "--show-nonprinting" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(page_width) then ("--page-width " +  '"' + page_width + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    columns: "output COLUMN columns and print columns down,\\nunless -a is used. Balance number of lines in the\\ncolumns on each page"
    across: "print columns across rather than down, used together\\nwith -COLUMN"
    show_control_chars: "use hat notation (^G) and octal backslash notation"
    double_space: "double space the output"
    date_format: "use FORMAT for the header date"
    expand_chars_tabs: "[CHAR[WIDTH]], --expand-tabs[=CHAR[WIDTH]]\\nexpand input CHARs (TABs) to tab WIDTH (8)"
    form_feed: "use form feeds instead of newlines to separate pages\\n(by a 3-line page header with -F or a 5-line header\\nand trailer without -F)"
    header: "use a centered HEADER instead of filename in page header,\\n-h \\\"\\\" prints a blank line, don't use -h\\\"\\\""
    replace_spaces_tab: "[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]]\\nreplace spaces with CHARs (TABs) to tab WIDTH (8)"
    join_lines: "merge full lines, turns off -W line truncation, no column\\nalignment, --sep-string[=STRING] sets separators"
    length: "set the page length to PAGE_LENGTH (66) lines\\n(default number of lines of text 56, and with -F 63).\\nimplies -t if PAGE_LENGTH <= 10"
    merge: "print all files in parallel, one in each column,\\ntruncate lines, but join lines of full length with -J"
    number_lines_use: "[SEP[DIGITS]], --number-lines[=SEP[DIGITS]]\\nnumber lines, use DIGITS (5) digits, then SEP (TAB),\\ndefault counting starts with 1st line of input file"
    first_line_number: "start counting with NUMBER at 1st line of first\\npage printed (see +FIRST_PAGE)"
    indent: "offset each line with MARGIN (zero) spaces, do not\\naffect -w or -W, MARGIN will be added to PAGE_WIDTH"
    no_file_warnings: "omit warning when a file cannot be opened"
    separate_columns_single: "[CHAR], --separator[=CHAR]\\nseparate columns by a single character, default for CHAR\\nis the <TAB> character without -w and 'no char' with -w.\\n-s[CHAR] turns off line truncation of all 3 column\\noptions (-COLUMN|-a -COLUMN|-m) except -w is set"
    separate_columns_spaceotherwise: "[STRING], --sep-string[=STRING]\\nseparate columns by STRING,\\nwithout -S: Default separator <TAB> with -J and <space>\\notherwise (same as -S\\\" \\\"), no effect on column options"
    omit_header: "omit page headers and trailers;\\nimplied if PAGE_LENGTH <= 10"
    omit_pagination: "omit page headers and trailers, eliminate any pagination\\nby form feeds set in input files"
    show_non_printing: "use octal backslash notation"
    width: "set page width to PAGE_WIDTH (72) characters for\\nmultiple text-column output only, -s[char] turns off (72)"
    page_width: "set page width to PAGE_WIDTH (72) characters always,\\ntruncate lines, except -J option is set, no interference\\nwith -S or -s"
  }
  output {
    File out_stdout = stdout()
  }
}