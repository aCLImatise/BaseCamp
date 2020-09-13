version 1.0

task Lusstr {
  input {
    Boolean? v
    String sub_cmd
  }
  command <<<
    lusstr \
      ~{sub_cmd} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    sub_cmd: "annotate, format"
  }
  output {
    File out_stdout = stdout()
  }
}