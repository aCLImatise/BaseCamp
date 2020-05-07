version 1.0

task CrossEntropy {
  input {
    String xX
    String kK
    String mM
    String qQ
    String gG
    String genotypeGenotype
  }
  command <<<
    crossEntropy \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(genotypeGenotype) then ("-- genotype " +  '"' + genotypeGenotype + '"') else ""}
  >>>
}