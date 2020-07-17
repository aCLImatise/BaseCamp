version 1.0

task FastaCheck {
  input {
    Boolean? aa
    Boolean? hyphen
    String in
  }
  command <<<
    fasta_check \
      ~{in} \
      ~{true="-aa" false="" aa} \
      ~{true="-hyphen" false="" hyphen}
  >>>
  parameter_meta {
    aa: ""
    hyphen: ""
    in: ""
  }
}