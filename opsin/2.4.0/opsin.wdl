version 1.0

task Opsin {
  input {
    Boolean allowAllowAcidsWithoutAcid
    Boolean detailedDetailedFailureAnalysis
    Boolean nameName
    String outputOutput
    Boolean allowAllowRadicals
    Boolean allowAllowUninterpretableStereo
    Boolean verboseVerbose
    Boolean wildcardWildcardRadicals
  }
  command <<<
    opsin \
      ~{true="--allowAcidsWithoutAcid" false="" allowAllowAcidsWithoutAcid} \
      ~{true="--detailedFailureAnalysis" false="" detailedDetailedFailureAnalysis} \
      ~{true="--name" false="" nameName} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--allowRadicals" false="" allowAllowRadicals} \
      ~{true="--allowUninterpretableStereo" false="" allowAllowUninterpretableStereo} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--wildcardRadicals" false="" wildcardWildcardRadicals}
  >>>
}