version 1.0

task GetChrLengthspl {
  input {
    File fast_a_file
    String? fast_a
    Int? file_two
  }
  command <<<
    getChrLengths_pl \
      ~{fast_a_file} \
      ~{fast_a} \
      ~{file_two}
  >>>
  parameter_meta {
    fast_a_file: ""
    fast_a: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}