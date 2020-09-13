version 1.0

task Abeona {
  input {
    Boolean? v
    String args
  }
  command <<<
    abeona \
      ~{args} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    args: "sub-command arguments"
  }
  output {
    File out_stdout = stdout()
  }
}