version 1.0

task MergeWrapper.py {
  input {
    String prefixPrefix
    String hcoHco
    String cC
    Int lengthLengthCutOff
    Boolean noNoNucMer
    Boolean noNoDelta
    Boolean stopStopAfterNucMer
    Boolean stopStopAfterDf
    String mergingMergingLengthCutOff
    Boolean cleanCleanOnly
    String? hybridHybridAssemblyFastA
    String? selfSelfAssemblyFastA
  }
  command <<<
    merge_wrapper.py \
      ~{hybridHybridAssemblyFastA} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(hcoHco) then ("--hco " +  '"' + hcoHco + '"') else ""} \
      ~{if defined(cC) then ("--c " +  '"' + cC + '"') else ""} \
      ~{if defined(lengthLengthCutOff) then ("--length_cutoff " +  '"' + lengthLengthCutOff + '"') else ""} \
      ~{true="--no_nucmer" false="" noNoNucMer} \
      ~{true="--no_delta" false="" noNoDelta} \
      ~{true="--stop_after_nucmer" false="" stopStopAfterNucMer} \
      ~{true="--stop_after_df" false="" stopStopAfterDf} \
      ~{if defined(mergingMergingLengthCutOff) then ("--merging_length_cutoff " +  '"' + mergingMergingLengthCutOff + '"') else ""} \
      ~{true="--clean_only" false="" cleanCleanOnly} \
      ~{selfSelfAssemblyFastA}
  >>>
}