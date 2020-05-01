version 1.0

task Genotype.pl {
  input {
    String tmpTmp
  }
  command <<<
    genotype.pl \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""}
  >>>
}