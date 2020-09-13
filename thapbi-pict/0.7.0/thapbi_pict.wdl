version 1.0

task ThapbiPict {
  input {
    Boolean? v
  }
  command <<<
    thapbi_pict \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}