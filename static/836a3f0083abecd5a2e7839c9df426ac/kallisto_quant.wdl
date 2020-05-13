version 1.0

task KallistoQuant {
  input {
    Boolean biasBias
    Int seedSeed
    Boolean plainPlainText
    Boolean fusionFusion
    Boolean singleSingle
    Boolean singleSingleOverhang
    Boolean frFrStranded
    Boolean rfRfStranded
    Boolean pseudoPseudoBam
    Boolean genomeGenomeBam
    Boolean verboseVerbose
    String? argumentsArguments
    String? fastFastQFiles
  }
  command <<<
    kallisto quant \
      ~{argumentsArguments} \
      ~{true="--bias" false="" biasBias} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--plaintext" false="" plainPlainText} \
      ~{true="--fusion" false="" fusionFusion} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--single-overhang" false="" singleSingleOverhang} \
      ~{true="--fr-stranded" false="" frFrStranded} \
      ~{true="--rf-stranded" false="" rfRfStranded} \
      ~{true="--pseudobam" false="" pseudoPseudoBam} \
      ~{true="--genomebam" false="" genomeGenomeBam} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{fastFastQFiles}
  >>>
}