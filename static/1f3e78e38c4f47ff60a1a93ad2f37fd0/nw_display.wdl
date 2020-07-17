version 1.0

task NwDisplay {
  input {
    Boolean? aabchilsuuvw
    File filename_vertical_line
  }
  command <<<
    nw_display \
      ~{filename_vertical_line} \
      ~{true="-aAbchilsuUvw" false="" aabchilsuuvw}
  >>>
  parameter_meta {
    aabchilsuuvw: ""
    filename_vertical_line: ""
  }
}