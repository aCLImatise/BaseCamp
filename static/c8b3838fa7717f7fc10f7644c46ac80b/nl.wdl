version 1.0

task Nl {
  input {
    String? body_numbering
    String? section_delimiter
    String? footer_numbering
    String? header_numbering
    Int? line_increment
    Int? join_blank_lines
    Int? number_format
    Boolean? no_re_number
    Int? number_separator
    Int? starting_line_number
    Int? number_width
    String pb_re
    String ln
    String rn
    String rz
  }
  command <<<
    nl \
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
      ~{if (no_re_number) then "--no-renumber" else ""} \
      ~{if defined(number_separator) then ("--number-separator " +  '"' + number_separator + '"') else ""} \
      ~{if defined(starting_line_number) then ("--starting-line-number " +  '"' + starting_line_number + '"') else ""} \
      ~{if defined(number_width) then ("--number-width " +  '"' + number_width + '"') else ""}
  >>>
  parameter_meta {
    body_numbering: "use STYLE for numbering body lines"
    section_delimiter: "use CC for logical page delimiters"
    footer_numbering: "use STYLE for numbering footer lines"
    header_numbering: "use STYLE for numbering header lines"
    line_increment: "line number increment at each line"
    join_blank_lines: "group of NUMBER empty lines counted as one"
    number_format: "insert line numbers according to FORMAT"
    no_re_number: "do not reset line numbers for each section"
    number_separator: "add STRING after (possible) line number"
    starting_line_number: "first line number for each section"
    number_width: "use NUMBER columns for line numbers"
    pb_re: "number only lines that contain a match for the basic regular\\nexpression, BRE"
    ln: "left justified, no leading zeros"
    rn: "right justified, no leading zeros"
    rz: "right justified, leading zeros"
  }
  output {
    File out_stdout = stdout()
  }
}