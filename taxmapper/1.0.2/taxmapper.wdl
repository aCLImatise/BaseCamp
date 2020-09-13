version 1.0

task Taxmapper {
  input {
    Boolean? v
  }
  command <<<
    taxmapper \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}