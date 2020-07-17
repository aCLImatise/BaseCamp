version 1.0

task FastaGrep {
  input {
    String re
  }
  command <<<
    fasta-grep \
      ~{re}
  >>>
  parameter_meta {
    re: ""
  }
}