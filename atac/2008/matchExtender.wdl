version 1.0

task MatchExtender {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    matchExtender \
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