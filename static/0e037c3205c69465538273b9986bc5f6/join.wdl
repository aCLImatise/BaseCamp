version 1.0

task Join {
  input {
    File? also_print_lines
    String? replace_missing_fields
    Boolean? ignore_case
    String? equivalent_to
    String? obey_format_constructing
    String? use_char_input
    File? filenum_suppress_joined
    String? one
    String? two
    Boolean? check_order
    Boolean? no_check_order
    Boolean? header
    Boolean? zero_terminated
    String? option
  }
  command <<<
    join \
      ~{option} \
      ~{if defined(also_print_lines) then ("-a " +  '"' + also_print_lines + '"') else ""} \
      ~{if defined(replace_missing_fields) then ("-e " +  '"' + replace_missing_fields + '"') else ""} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{if defined(equivalent_to) then ("-j " +  '"' + equivalent_to + '"') else ""} \
      ~{if defined(obey_format_constructing) then ("-o " +  '"' + obey_format_constructing + '"') else ""} \
      ~{if defined(use_char_input) then ("-t " +  '"' + use_char_input + '"') else ""} \
      ~{if defined(filenum_suppress_joined) then ("-v " +  '"' + filenum_suppress_joined + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{true="--check-order" false="" check_order} \
      ~{true="--nocheck-order" false="" no_check_order} \
      ~{true="--header" false="" header} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    also_print_lines: "also print unpairable lines from file FILENUM, where FILENUM is 1 or 2, corresponding to FILE1 or FILE2"
    replace_missing_fields: "replace missing input fields with EMPTY"
    ignore_case: "ignore differences in case when comparing fields"
    equivalent_to: "equivalent to '-1 FIELD -2 FIELD'"
    obey_format_constructing: "obey FORMAT while constructing output line"
    use_char_input: "use CHAR as input and output field separator"
    filenum_suppress_joined: "like -a FILENUM, but suppress joined output lines"
    one: "join on this FIELD of file 1"
    two: "join on this FIELD of file 2"
    check_order: "check that the input is correctly sorted, even if all input lines are pairable"
    no_check_order: "do not check that the input is correctly sorted"
    header: "treat the first line in each file as field headers, print them without trying to pair them"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}