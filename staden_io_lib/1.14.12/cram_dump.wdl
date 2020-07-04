version 1.0

task CramDump {
  input {
    Boolean? v
    File filename_dot_cram
  }
  command <<<
    cram_dump \
      ~{filename_dot_cram} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    filename_dot_cram: ""
  }
}