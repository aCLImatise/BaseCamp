version 1.0

task NucaminoHiv1b {
  input {
    Boolean quietQuiet
    Boolean geneGene
    String inInDelCodonOpeningBonus
    String inInDelCodonExtensionBonus
    String stopStopCodonPenalty
    String gapGapOpeningPenalty
    String gapGapExtensionPenalty
    String goGoRoutines
    String outputOutputFormat
    String inputInput
    String outputOutput
    Boolean pprPprOf
    String? optionsOptions
    String? hiv1bHiv1b
    String? hiv1bHiv1bOptions
  }
  command <<<
    nucamino hiv1b \
      ~{optionsOptions} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--gene" false="" geneGene} \
      ~{if defined(inInDelCodonOpeningBonus) then ("--indel-codon-opening-bonus " +  '"' + inInDelCodonOpeningBonus + '"') else ""} \
      ~{if defined(inInDelCodonExtensionBonus) then ("--indel-codon-extension-bonus " +  '"' + inInDelCodonExtensionBonus + '"') else ""} \
      ~{if defined(stopStopCodonPenalty) then ("--stop-codon-penalty " +  '"' + stopStopCodonPenalty + '"') else ""} \
      ~{if defined(gapGapOpeningPenalty) then ("--gap-opening-penalty " +  '"' + gapGapOpeningPenalty + '"') else ""} \
      ~{if defined(gapGapExtensionPenalty) then ("--gap-extension-penalty " +  '"' + gapGapExtensionPenalty + '"') else ""} \
      ~{if defined(goGoRoutines) then ("--goroutines " +  '"' + goGoRoutines + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--pprof" false="" pprPprOf} \
      ~{hiv1bHiv1b} \
      ~{hiv1bHiv1bOptions}
  >>>
}