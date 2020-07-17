version 1.0

task MbPileup2sites {
  input {
    String pile_up_file
  }
  command <<<
    mb-pileup2sites \
      ~{pile_up_file}
  >>>
  parameter_meta {
    pile_up_file: ""
  }
}