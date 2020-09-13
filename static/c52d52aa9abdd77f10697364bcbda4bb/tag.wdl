version 1.0

task Tag {
  input {
    Boolean? v
  }
  command <<<
    tag \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}