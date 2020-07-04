version 1.0

task GetRandomReads.pl {
  input {
    String tag_directory
  }
  command <<<
    getRandomReads.pl \
      ~{tag_directory}
  >>>
  parameter_meta {
    tag_directory: ""
  }
}