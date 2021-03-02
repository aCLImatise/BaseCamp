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
    docker: "quay.io/biocontainers/kaiju:1.7.4--h8b12597_0"
  }
  parameter_meta {
    remove_cmd: "(string)\\nCommand for deleting .bwt and .sa files (e.g. rm)\\nValue:  NULL (null)"
  }
  output {
    File out_stdout = stdout()
  }
}