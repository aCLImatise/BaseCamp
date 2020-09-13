version 1.0

task Mixcr {
  input {
    Boolean? v
  }
  command <<<
    mixcr \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}