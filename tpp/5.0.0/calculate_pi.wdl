version 1.0

task CalculatePi {
  input {
    String input_file_dot_txt
  }
  command <<<
    calculate_pi \
      ~{input_file_dot_txt}
  >>>
  parameter_meta {
    input_file_dot_txt: ""
  }
}