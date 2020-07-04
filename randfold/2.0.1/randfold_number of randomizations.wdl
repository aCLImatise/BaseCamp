version 1.0

task RandfoldNumber of randomizations {
  input {
    String rand_fold
    String method
    File file_name
    String number_of_randomization_s
  }
  command <<<
    randfold number of randomizations \
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