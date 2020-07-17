version 1.0

task Cgb2ctg {
  input {
    String extension
  }
  command <<<
    cgb2ctg \
      ~{extension}
  >>>
  parameter_meta {
    extension: "otherwise -i and -o are those specified in the command line if -i is provided the filename must end in .cgb"
  }
}