version 1.0

task SambambaIndex {
  input {
    String nNThreads
    Boolean showShowProgress
    Boolean checkCheckBins
    Boolean cramCramInput
  }
  command <<<
    sambamba index \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{true="--check-bins" false="" checkCheckBins} \
      ~{true="--cram-input" false="" cramCramInput}
  >>>
}