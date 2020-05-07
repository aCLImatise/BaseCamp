version 1.0

task VtoolsEvaluate {
  input {
    File callCallVcf
    File positivePositiveVcf
    String callCallSamples
    String positivePositiveSamples
    File statsStats
    File discordantDiscordantVcf
    Float minMinQual
    Int minMinDepth
    String? optionsOptions
  }
  command <<<
    vtools-evaluate \
      ~{optionsOptions} \
      ~{if defined(callCallVcf) then ("--call-vcf " +  '"' + callCallVcf + '"') else ""} \
      ~{if defined(positivePositiveVcf) then ("--positive-vcf " +  '"' + positivePositiveVcf + '"') else ""} \
      ~{if defined(callCallSamples) then ("--call-samples " +  '"' + callCallSamples + '"') else ""} \
      ~{if defined(positivePositiveSamples) then ("--positive-samples " +  '"' + positivePositiveSamples + '"') else ""} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{if defined(discordantDiscordantVcf) then ("--discordant-vcf " +  '"' + discordantDiscordantVcf + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""}
  >>>
}