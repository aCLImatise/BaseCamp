version 1.0

task SNAPstats.pl {
  input {
    String codons_dot
  }
  command <<<
    SNAPstats.pl \
      ~{codons_dot}
  >>>
  parameter_meta {
    codons_dot: ""
  }
}