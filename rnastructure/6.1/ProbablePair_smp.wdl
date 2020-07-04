version 1.0

task ProbablePairSmp {
  input {
    String probable_pair
    String input_file
    String ct_file
  }
  command <<<
    ProbablePair-smp \
      ~{probable_pair} \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    probable_pair: ""
    input_file: ""
    ct_file: ""
  }
}