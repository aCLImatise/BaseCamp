version 1.0

task DnaseToJavatreeview.py {
  input {
    String windowWindowSize
    Boolean iI
    Boolean oO
    Boolean aA
    Boolean nN
    Boolean cC
    Boolean bB
    Boolean aA
    String biasBiasFile
    Boolean rR
    String? regionsRegions
    String? readsReads
    String? outputOutput
  }
  command <<<
    dnase_to_javatreeview.py \
      ~{regionsRegions} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{true="-A" false="" aA} \
      ~{if defined(biasBiasFile) then ("--bias-file " +  '"' + biasBiasFile + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{readsReads} \
      ~{outputOutput}
  >>>
}