version 1.0

task Comm {
  input {
    Boolean? one
    Boolean? two
    Boolean? suppress_column_lines_appear
    Boolean? check_order
    Boolean? no_check_order
    String? output_delimiter
    Boolean? zero_terminated
    String? option
  }
  command <<<
    comm \
      ~{option} \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="-3" false="" suppress_column_lines_appear} \
      ~{true="--check-order" false="" check_order} \
      ~{true="--nocheck-order" false="" no_check_order} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    one: "suppress column 1 (lines unique to FILE1)"
    two: "suppress column 2 (lines unique to FILE2)"
    suppress_column_lines_appear: "suppress column 3 (lines that appear in both files)"
    check_order: "check that the input is correctly sorted, even if all input lines are pairable"
    no_check_order: "do not check that the input is correctly sorted"
    output_delimiter: "separate columns with STR"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}