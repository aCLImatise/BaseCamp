version 1.0

task SplitPriorsByChromosome {
  input {
    Boolean zZ
    String cC
    String sS
    Boolean gG
    String? outputOutputPrefix
  }
  command <<<
    split-priors-by-chromosome \
      ~{outputOutputPrefix} \
      ~{true="-z" false="" zZ} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}