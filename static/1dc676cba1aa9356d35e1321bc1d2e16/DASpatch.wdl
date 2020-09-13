version 1.0

task DASpatch {
  input {
    Boolean? v
  }
  command <<<
    DASpatch \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}