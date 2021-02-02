version 1.0

task Refgenieserver {
  input {
    Boolean? v
  }
  command <<<
    refgenieserver \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}