version 1.0

task FilterSeer {
  input {
    Boolean kK
    String chisqChisq
    String pvalPval
    String mafMaf
    String betaBeta
    Boolean substrSubstr
    Boolean posPosBeta
    Boolean sS
  }
  command <<<
    filter_seer \
      ~{true="-k" false="" kK} \
      ~{if defined(chisqChisq) then ("--chisq " +  '"' + chisqChisq + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{if defined(mafMaf) then ("--maf " +  '"' + mafMaf + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{true="--substr" false="" substrSubstr} \
      ~{true="--pos_beta" false="" posPosBeta} \
      ~{true="-s" false="" sS}
  >>>
}