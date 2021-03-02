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
    docker: "None"
  }
  parameter_meta {
    file_of_aliases: "File of aliases"
    pipe: "Read aliases from stdin"
  }
  output {
    File out_stdout = stdout()
  }
}