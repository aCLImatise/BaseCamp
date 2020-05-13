version 1.0

task Vcf2snpFreec.pl {
  input {
    Boolean fF
  }
  command <<<
    vcf2snpFreec.pl \
      ~{true="-f" false="" fF}
  >>>
}