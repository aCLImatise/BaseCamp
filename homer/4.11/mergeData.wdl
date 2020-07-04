version 1.0

task MergeData.pl {
  input {
    File file_one
    File file_two
  }
  command <<<
    mergeData.pl \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
}