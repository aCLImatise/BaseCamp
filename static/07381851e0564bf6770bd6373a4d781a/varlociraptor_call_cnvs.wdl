version 1.0

task VarlociraptorCallCnvs {
  input {
    String callsCalls
    Int maxMaxDist
    Int minMinBayesFactor
    String outputOutput
    String purityPurity
    String threadsThreads
  }
  command <<<
    varlociraptor call cnvs \
      ~{if defined(callsCalls) then ("--calls " +  '"' + callsCalls + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--max-dist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(minMinBayesFactor) then ("--min-bayes-factor " +  '"' + minMinBayesFactor + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(purityPurity) then ("--purity " +  '"' + purityPurity + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}