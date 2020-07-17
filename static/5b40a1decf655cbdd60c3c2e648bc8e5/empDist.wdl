version 1.0

task EmpDist.pl {
  input {
    String freq_file
    String output_file
  }
  command <<<
    empDist.pl \
      ~{freq_file} \
      ~{output_file}
  >>>
  parameter_meta {
    freq_file: ""
    output_file: ""
  }
}