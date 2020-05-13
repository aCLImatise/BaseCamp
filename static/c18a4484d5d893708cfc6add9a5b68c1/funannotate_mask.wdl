version 1.0

task FunannotateMask {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean methodMethod
    Boolean repeatmaskerRepeatmaskerSpecies
    Boolean repeatRepeatModelerLib
    Boolean cpusCpus
    Boolean debugDebug
    String? argumentsArguments
  }
  command <<<
    funannotate mask \
      ~{argumentsArguments} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--repeatmasker_species" false="" repeatmaskerRepeatmaskerSpecies} \
      ~{true="--repeatmodeler_lib" false="" repeatRepeatModelerLib} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--debug" false="" debugDebug}
  >>>
}