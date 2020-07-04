version 1.0

task RandfoldFile name {
  input {
    String rand_fold
    String method
    File file_name
    String number_of_randomization_s
  }
  command <<<
    randfold file name \
      ~{rand_fold} \
      ~{method} \
      ~{file_name} \
      ~{number_of_randomization_s}
  >>>
  parameter_meta {
    rand_fold: ""
    method: ""
    file_name: ""
    number_of_randomization_s: ""
  }
}