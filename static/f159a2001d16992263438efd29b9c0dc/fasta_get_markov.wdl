version 1.0

task FastaGetMarkov {
  input {
    String? sequence
    File? var_1
    String? background
    File? var_3
  }
  command <<<
    fasta-get-markov \
      ~{sequence} \
      ~{var_1} \
      ~{background} \
      ~{var_3}
  >>>
  parameter_meta {
    sequence: ""
    var_1: ""
    background: ""
    var_3: ""
  }
}