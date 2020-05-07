version 1.0

task Soap2sam.pl {
  input {
    Boolean pP
    String? alnAlnSoap
  }
  command <<<
    soap2sam.pl \
      ~{alnAlnSoap} \
      ~{true="-p" false="" pP}
  >>>
}