version 1.0

task Lusstr {
  input {
    Boolean? v
    String sub_cmd
  }
  command <<<
    lusstr \
      ~{sub_cmd} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    sub_cmd: "annotate, format"
  }
}