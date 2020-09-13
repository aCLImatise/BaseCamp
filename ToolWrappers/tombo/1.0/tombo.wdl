version 1.0

task Tombo {
  input {
    Boolean? v
  }
  command <<<
    tombo \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}