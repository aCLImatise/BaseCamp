version 1.0

task Amos2mates {
  input {
    String extension
  }
  command <<<
    amos2mates \
      ~{extension}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extension: "otherwise -i and -o are those specified in the command line\\nif -i is provided the filename must end in .afg"
  }
  output {
    File out_stdout = stdout()
  }
}