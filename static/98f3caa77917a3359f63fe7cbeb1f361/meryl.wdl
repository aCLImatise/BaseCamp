version 1.0

task Meryl {
  input {
    String union
  }
  command <<<
    meryl \
      ~{union}
  >>>
  parameter_meta {
    union: "[count k=22 input1.fasta output input1] \ [count k=22 input2.fasta output input2]"
  }
}