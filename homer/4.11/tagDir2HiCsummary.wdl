version 1.0

task TagDir2HiCsummary.pl {
  input {
    String tagdirtwohicfiledotpl
    String tag_directory
  }
  command <<<
    tagDir2HiCsummary.pl \
      ~{tagdirtwohicfiledotpl} \
      ~{tag_directory}
  >>>
  parameter_meta {
    tagdirtwohicfiledotpl: ""
    tag_directory: ""
  }
}