version 1.0

task Nthits {
  input {
    String threadsThreads
    String kmKmEr
    String cutCutOff
    String prefPref
    Boolean outOutBloom
    Boolean solidSolid
  }
  command <<<
    nthits \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(prefPref) then ("--pref " +  '"' + prefPref + '"') else ""} \
      ~{true="--outbloom" false="" outOutBloom} \
      ~{true="--solid" false="" solidSolid}
  >>>
}