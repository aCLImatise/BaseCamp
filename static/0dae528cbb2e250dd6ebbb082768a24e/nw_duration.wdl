version 1.0

task NwDuration {
  input {
    Boolean? bh_il
    File filename_vertical_line
  }
  command <<<
    nw_duration \
      ~{filename_vertical_line} \
      ~{true="-bhIL" false="" bh_il}
  >>>
  parameter_meta {
    bh_il: ""
    filename_vertical_line: ""
  }
}