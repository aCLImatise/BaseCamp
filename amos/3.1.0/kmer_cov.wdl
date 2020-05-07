version 1.0

task KmerCov {
  input {
    Boolean fF
    String lL
    Boolean aA
    Boolean fF
    String rR
    String uU
    String? kmKmErFile
  }
  command <<<
    kmer-cov \
      ~{kmKmErFile} \
      ~{true="-F" false="" fF} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-f" false="" fF} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""}
  >>>
}