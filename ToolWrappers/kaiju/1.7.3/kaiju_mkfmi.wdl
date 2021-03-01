version 1.0

task Kaijumkfmi {
  input {
    Boolean? remove_cmd
  }
  command <<<
    kaiju_mkfmi \
      ~{if (remove_cmd) then "-removecmd" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_cmd: "(string)\\nCommand for deleting .bwt and .sa files (e.g. rm)\\nValue:  NULL (null)"
  }
  output {
    File out_stdout = stdout()
  }
}