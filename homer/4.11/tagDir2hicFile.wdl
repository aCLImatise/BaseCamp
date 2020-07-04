version 1.0

task TagDir2hicFile.pl {
  input {
    String tag_directory
  }
  command <<<
    tagDir2hicFile.pl \
      ~{tag_directory}
  >>>
  parameter_meta {
    tag_directory: ""
  }
}