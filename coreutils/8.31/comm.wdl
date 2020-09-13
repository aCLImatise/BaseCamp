version 1.0

task Comm {
  input {
    Boolean? one
    Boolean? two
    Boolean? suppress_column_lines_appear
    Boolean? check_order
    Boolean? no_check_order
    String? output_delimiter
    Boolean? total
    Boolean? zero_terminated
  }
  command <<<
    comm \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (suppress_column_lines_appear) then "-3" else ""} \
      ~{if (check_order) then "--check-order" else ""} \
      ~{if (no_check_order) then "--nocheck-order" else ""} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{if (total) then "--total" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  parameter_meta {
    one: "suppress column 1 (lines unique to FILE1)"
    two: "suppress column 2 (lines unique to FILE2)"
    suppress_column_lines_appear: "suppress column 3 (lines that appear in both files)"
    check_order: "check that the input is correctly sorted, even\\nif all input lines are pairable"
    no_check_order: "do not check that the input is correctly sorted"
    output_delimiter: "separate columns with STR"
    total: "output a summary"
    zero_terminated: "line delimiter is NUL, not newline"
  }
  output {
    File out_stdout = stdout()
  }
}