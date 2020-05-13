version 1.0

task Simulator.pyTranscriptome {
  input {
    String refRefT
    String refRefG
    String expExp
    String modelModelPrefix
    String outputOutput
    String numberNumber
    Int maxMaxLen
    Int minMinLen
    String seedSeed
    String kmKmErBias
    String baseBaseCaller
    String readReadType
    String strandStrandNess
    Boolean noNoModelIr
    Boolean perfectPerfect
    String numNumThreads
    Boolean uracilUracil
  }
  command <<<
    simulator.py transcriptome \
      ~{if defined(refRefT) then ("--ref_t " +  '"' + refRefT + '"') else ""} \
      ~{if defined(refRefG) then ("--ref_g " +  '"' + refRefG + '"') else ""} \
      ~{if defined(expExp) then ("--exp " +  '"' + expExp + '"') else ""} \
      ~{if defined(modelModelPrefix) then ("--model_prefix " +  '"' + modelModelPrefix + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max_len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(kmKmErBias) then ("--KmerBias " +  '"' + kmKmErBias + '"') else ""} \
      ~{if defined(baseBaseCaller) then ("--basecaller " +  '"' + baseBaseCaller + '"') else ""} \
      ~{if defined(readReadType) then ("--read_type " +  '"' + readReadType + '"') else ""} \
      ~{if defined(strandStrandNess) then ("--strandness " +  '"' + strandStrandNess + '"') else ""} \
      ~{true="--no_model_ir" false="" noNoModelIr} \
      ~{true="--perfect" false="" perfectPerfect} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--uracil" false="" uracilUracil}
  >>>
}