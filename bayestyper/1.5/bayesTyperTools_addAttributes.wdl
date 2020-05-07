version 1.0

task BayesTyperToolsAddAttributes {
  input {
    Boolean vV
    Boolean oO
    Boolean zZ
    String genomeGenomeFile
    String repeatRepeatFile
    String independentIndependentSamplesRegex
    String trioTrioSampleInfo
  }
  command <<<
    bayesTyperTools addAttributes \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{if defined(genomeGenomeFile) then ("--genome-file " +  '"' + genomeGenomeFile + '"') else ""} \
      ~{if defined(repeatRepeatFile) then ("--repeat-file " +  '"' + repeatRepeatFile + '"') else ""} \
      ~{if defined(independentIndependentSamplesRegex) then ("--independent-samples-regex " +  '"' + independentIndependentSamplesRegex + '"') else ""} \
      ~{if defined(trioTrioSampleInfo) then ("--trio-sample-info " +  '"' + trioTrioSampleInfo + '"') else ""}
  >>>
}