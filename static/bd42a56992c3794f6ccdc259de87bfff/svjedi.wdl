version 1.0

task Svjedi.py {
  input {
    String vcfVcf
    String refRef
    String alleleAllele
    Boolean iI
    String pafPaf
    String threadsThreads
    String outputOutput
    String doverDover
    String dDEnd
    Int minMinSupport
    Boolean dD
  }
  command <<<
    svjedi.py \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(alleleAllele) then ("--allele " +  '"' + alleleAllele + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(pafPaf) then ("--paf " +  '"' + pafPaf + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(doverDover) then ("-dover " +  '"' + doverDover + '"') else ""} \
      ~{if defined(dDEnd) then ("-dend " +  '"' + dDEnd + '"') else ""} \
      ~{if defined(minMinSupport) then ("--minsupport " +  '"' + minMinSupport + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}