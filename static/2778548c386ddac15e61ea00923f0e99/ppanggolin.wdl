version 1.0

task Ppanggolin {
  input {
    Boolean? v
  }
  command <<<
    ppanggolin \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}