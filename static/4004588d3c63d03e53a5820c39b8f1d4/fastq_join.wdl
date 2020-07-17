version 1.0

task FastqJoin {
  input {
    Boolean? o
    String read_one_dot_fq
    String read_two_dot_fq
    String? mate_dot_fq
  }
  command <<<
    fastq-join \
      ~{read_one_dot_fq} \
      ~{read_two_dot_fq} \
      ~{mate_dot_fq} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    o: ""
    read_one_dot_fq: ""
    read_two_dot_fq: ""
    mate_dot_fq: ""
  }
}