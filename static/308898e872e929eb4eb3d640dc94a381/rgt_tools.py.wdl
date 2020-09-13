version 1.0

task Rgttoolspy {
  input {
    Boolean? v
  }
  command <<<
    rgt_tools_py \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}