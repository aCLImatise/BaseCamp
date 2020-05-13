version 1.0

task Ntcard {
  input {
    String threadsThreads
    String kmKmEr
    String gapGap
    String covCov
    String prefPref
    String outputOutput
  }
  command <<<
    ntcard \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(covCov) then ("--cov " +  '"' + covCov + '"') else ""} \
      ~{if defined(prefPref) then ("--pref " +  '"' + prefPref + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}