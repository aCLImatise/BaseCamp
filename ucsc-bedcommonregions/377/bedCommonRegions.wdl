version 1.0

task BedCommonRegions {
  input {
    File file_n
  }
  command <<<
    bedCommonRegions \
      ~{file_n}
  >>>
  parameter_meta {
    file_n: ""
  }
}