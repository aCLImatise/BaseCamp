version 1.0

task FastqJoin {
  input {
    String? o
    String read_one_dot_fq
    String read_two_dot_fq
    String? mate_dot_fq
  }
  command <<<
    fastq-join \
      ~{read_one_dot_fq} \
      ~{read_two_dot_fq} \
      ~{mate_dot_fq} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    read_one_dot_fq: ""
    read_two_dot_fq: ""
    mate_dot_fq: ""
  }
}