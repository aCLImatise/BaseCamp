version 1.0

task Nl {
  input {
    String? body_numbering
    String? section_delimiter
    String? footer_numbering
    String? header_numbering
    String? line_increment
    String? join_blank_lines
    String? number_format
    Boolean? no_re_number
    String? number_separator
    String? starting_line_number
    String? number_width
    String number_all_lines
    String number_only_nonempty
    String number_no_lines
    String pb_re
    String ln
    String rn
    String rz
  }
  command <<<
    nl \
      ~{number_all_lines} \
      ~{number_only_nonempty} \
      ~{number_no_lines} \
      ~{pb_re} \
      ~{ln} \
      ~{rn} \
      ~{rz} \
      ~{if defined(body_numbering) then ("--body-numbering " +  '"' + body_numbering + '"') else ""} \
      ~{if defined(section_delimiter) then ("--section-delimiter " +  '"' + section_delimiter + '"') else ""} \
      ~{if defined(footer_numbering) then ("--footer-numbering " +  '"' + footer_numbering + '"') else ""} \
      ~{if defined(header_numbering) then ("--header-numbering " +  '"' + header_numbering + '"') else ""} \
      ~{if defined(line_increment) then ("--line-increment " +  '"' + line_increment + '"') else ""} \
      ~{if defined(join_blank_lines) then ("--join-blank-lines " +  '"' + join_blank_lines + '"') else ""} \
      ~{if defined(number_format) then ("--number-format " +  '"' + number_format + '"') else ""} \
      ~{true="--no-renumber" false="" no_re_number} \
      ~{if defined(number_separator) then ("--number-separator " +  '"' + number_separator + '"') else ""} \
      ~{if defined(starting_line_number) then ("--starting-line-number " +  '"' + starting_line_number + '"') else ""} \
      ~{if defined(number_width) then ("--number-width " +  '"' + number_width + '"') else ""}
  >>>
  parameter_meta {
    body_numbering: "use STYLE for numbering body lines"
    section_delimiter: "use CC for separating logical pages"
    footer_numbering: "use STYLE for numbering footer lines"
    header_numbering: "use STYLE for numbering header lines"
    line_increment: "line number increment at each line"
    join_blank_lines: "group of NUMBER empty lines counted as one"
    number_format: "insert line numbers according to FORMAT"
    no_re_number: "do not reset line numbers at logical pages"
    number_separator: "add STRING after (possible) line number"
    starting_line_number: "first line number on each logical page"
    number_width: "use NUMBER columns for line numbers"
    number_all_lines: "number all lines"
    number_only_nonempty: "number only nonempty lines"
    number_no_lines: "number no lines"
    pb_re: "number only lines that contain a match for the basic regular expression, BRE"
    ln: "left justified, no leading zeros"
    rn: "right justified, no leading zeros"
    rz: "right justified, leading zeros"
  }
}