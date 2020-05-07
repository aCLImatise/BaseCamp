version 1.0

task DnaseAverageProfile.py {
  input {
    String windowWindowSize
    String biasBiasFile
    Boolean iI
    Boolean cC
    Boolean nN
    Boolean bB
    Boolean aA
    String? regionsRegions
    String? readsReads
    String? outputOutput
  }
  command <<<
    dnase_average_profile.py \
      ~{regionsRegions} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(biasBiasFile) then ("--bias-file " +  '"' + biasBiasFile + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{true="-b" false="" bB} \
      ~{true="-A" false="" aA} \
      ~{readsReads} \
      ~{outputOutput}
  >>>
}