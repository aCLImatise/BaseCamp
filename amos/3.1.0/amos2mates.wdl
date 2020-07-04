version 1.0

task Amos2mates {
  input {
    String extension
  }
  command <<<
    amos2mates \
      ~{extension}
  >>>
  parameter_meta {
    extension: "otherwise -i and -o are those specified in the command line if -i is provided the filename must end in .afg"
  }
}