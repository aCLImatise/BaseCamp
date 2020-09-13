version 1.0

task Rsidx {
  input {
    Boolean? v
    String sub_cmd
  }
  command <<<
    rsidx \
      ~{sub_cmd} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    sub_cmd: "index, search"
  }
  output {
    File out_stdout = stdout()
  }
}