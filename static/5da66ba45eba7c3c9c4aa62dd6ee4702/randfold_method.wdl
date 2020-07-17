version 1.0

task RandfoldMethod {
  input {
    File file_name
    String number_of_randomization_s
  }
  command <<<
    randfold method \
      ~{file_name} \
      ~{number_of_randomization_s}
  >>>
  parameter_meta {
    file_name: ""
    number_of_randomization_s: ""
  }
}