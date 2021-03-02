version 1.0

task Eproxy {
  input {
    Boolean? file_of_aliases
    Boolean? pipe
  }
  command <<<
    eproxy \
      ~{if (file_of_aliases) then "-alias" else ""} \
      ~{if (pipe) then "-pipe" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    file_of_aliases: "File of aliases"
    pipe: "Read aliases from stdin"
  }
  output {
    File out_stdout = stdout()
  }
}