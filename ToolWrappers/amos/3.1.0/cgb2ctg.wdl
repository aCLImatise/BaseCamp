version 1.0

task Cgb2ctg {
  input {
    String extension
  }
  command <<<
    cgb2ctg \
      ~{extension}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extension: "otherwise -i and -o are those specified in the command line\\nif -i is provided the filename must end in .cgb\\n"
  }
  output {
    File out_stdout = stdout()
  }
}