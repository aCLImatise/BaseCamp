version 1.0

task PrimedRPA {
  input {
    String runRunId
    String priorPriorAlign
    String priorPriorBindingSite
    String inputInputFile
    String inputInputFileType
    String identityIdentityThreshold
    String conservedConservedAnchor
    String primerPrimerLength
    String probeProbeRequired
    String probeProbeLength
    String ampliconAmpliconSizeLimit
    String nucleotideNucleotideRepeatLimit
    Int mingMingC
    Int maxMaxGc
    String dimerisationDimerisationThresh
    String backgroundBackgroundCheck
    String crossCrossReactivityThresh
    String hardHardCrossReactFilter
    Int maxMaxSets
    String threadsThreads
    String backgroundBackgroundSearchSensitivity
  }
  command <<<
    PrimedRPA \
      ~{if defined(runRunId) then ("--RunID " +  '"' + runRunId + '"') else ""} \
      ~{if defined(priorPriorAlign) then ("--PriorAlign " +  '"' + priorPriorAlign + '"') else ""} \
      ~{if defined(priorPriorBindingSite) then ("--PriorBindingSite " +  '"' + priorPriorBindingSite + '"') else ""} \
      ~{if defined(inputInputFile) then ("--InputFile " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(inputInputFileType) then ("--InputFileType " +  '"' + inputInputFileType + '"') else ""} \
      ~{if defined(identityIdentityThreshold) then ("--IdentityThreshold " +  '"' + identityIdentityThreshold + '"') else ""} \
      ~{if defined(conservedConservedAnchor) then ("--ConservedAnchor " +  '"' + conservedConservedAnchor + '"') else ""} \
      ~{if defined(primerPrimerLength) then ("--PrimerLength " +  '"' + primerPrimerLength + '"') else ""} \
      ~{if defined(probeProbeRequired) then ("--ProbeRequired " +  '"' + probeProbeRequired + '"') else ""} \
      ~{if defined(probeProbeLength) then ("--ProbeLength " +  '"' + probeProbeLength + '"') else ""} \
      ~{if defined(ampliconAmpliconSizeLimit) then ("--AmpliconSizeLimit " +  '"' + ampliconAmpliconSizeLimit + '"') else ""} \
      ~{if defined(nucleotideNucleotideRepeatLimit) then ("--NucleotideRepeatLimit " +  '"' + nucleotideNucleotideRepeatLimit + '"') else ""} \
      ~{if defined(mingMingC) then ("--MinGC " +  '"' + mingMingC + '"') else ""} \
      ~{if defined(maxMaxGc) then ("--MaxGC " +  '"' + maxMaxGc + '"') else ""} \
      ~{if defined(dimerisationDimerisationThresh) then ("--DimerisationThresh " +  '"' + dimerisationDimerisationThresh + '"') else ""} \
      ~{if defined(backgroundBackgroundCheck) then ("--BackgroundCheck " +  '"' + backgroundBackgroundCheck + '"') else ""} \
      ~{if defined(crossCrossReactivityThresh) then ("--CrossReactivityThresh " +  '"' + crossCrossReactivityThresh + '"') else ""} \
      ~{if defined(hardHardCrossReactFilter) then ("--HardCrossReactFilter " +  '"' + hardHardCrossReactFilter + '"') else ""} \
      ~{if defined(maxMaxSets) then ("--MaxSets " +  '"' + maxMaxSets + '"') else ""} \
      ~{if defined(threadsThreads) then ("--Threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(backgroundBackgroundSearchSensitivity) then ("--BackgroundSearchSensitivity " +  '"' + backgroundBackgroundSearchSensitivity + '"') else ""}
  >>>
}