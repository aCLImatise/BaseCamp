version 1.0

task Amos2frg {
  input {
    String extension
  }
  command <<<
    amos2frg \
      ~{extension}
  >>>
  parameter_meta {
    extension: "otherwise -i and -o are those specified in the command line"
  }
  output {
    File out_stdout = stdout()
  }
}