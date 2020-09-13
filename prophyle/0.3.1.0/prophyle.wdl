version 1.0

task Prophyle {
  input {
    Boolean? v
  }
  command <<<
    prophyle \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}