version 1.0

task SsuMerge {
  input {
    Boolean fF
    Boolean rfRfOnly
    Boolean keepKeep
    Boolean iI
    Boolean dnaDna
    String? outputOutputDirCreatedBySsuPrep
  }
  command <<<
    ssu-merge \
      ~{outputOutputDirCreatedBySsuPrep} \
      ~{true="-f" false="" fF} \
      ~{true="--rfonly" false="" rfRfOnly} \
      ~{true="--keep" false="" keepKeep} \
      ~{true="-i" false="" iI} \
      ~{true="--dna" false="" dnaDna}
  >>>
}