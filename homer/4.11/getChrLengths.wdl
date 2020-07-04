version 1.0

task GetChrLengths.pl {
  input {
    String fast_a_file
    String? fast_a
    File? file_two
  }
  command <<<
    getChrLengths.pl \
      ~{fast_a_file} \
      ~{fast_a} \
      ~{file_two}
  >>>
  parameter_meta {
    fast_a_file: ""
    fast_a: ""
    file_two: ""
  }
}