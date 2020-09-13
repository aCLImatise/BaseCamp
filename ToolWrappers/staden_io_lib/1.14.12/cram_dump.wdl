version 1.0

task CramDump {
  input {
    Boolean? v
    File filename_dot_cram
  }
  command <<<
    cram_dump \
      ~{filename_dot_cram} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    filename_dot_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}