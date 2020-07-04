version 1.0

task RemoveOutOfBoundsReads.pl {
  input {
    String tag_directory
    String genome
  }
  command <<<
    removeOutOfBoundsReads.pl \
      ~{tag_directory} \
      ~{genome}
  >>>
  parameter_meta {
    tag_directory: ""
    genome: ""
  }
}