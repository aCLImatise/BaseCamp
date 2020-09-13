version 1.0

task Datander {
  input {
    Boolean? v
  }
  command <<<
    datander \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}