version 1.0

task ScramPileup {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    scram_pileup \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}