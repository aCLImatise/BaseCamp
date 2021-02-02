version 1.0

task NwDuration {
  input {
    Boolean? bh_il
    File filename_vertical_line
  }
  command <<<
    nw_duration \
      ~{filename_vertical_line} \
      ~{if (bh_il) then "-bhIL" else ""}
  >>>
  parameter_meta {
    bh_il: ""
    filename_vertical_line: ""
  }
  output {
    File out_stdout = stdout()
  }
}