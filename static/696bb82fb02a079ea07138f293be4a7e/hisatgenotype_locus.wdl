version 1.0

task HisatgenotypeLocus.py {
  input {
    String randomRandomSeed
    String numNumEditDist
    String perPerBaseErrorRate
    String perPerBaseSnpRate
    String skipSkipFragmentRegions
    Boolean verboseVerbose
    String verboseVerboseLevel
    String debugDebug
    String assemblyAssemblyBase
    Boolean assemblyAssembly
    Boolean noNoErrorCorrection
    Boolean keepKeepAlignment
    String onlyOnlyLocusList
    Boolean discordantDiscordant
    Boolean typeTypePrimaryExons
    Boolean keepKeepLowAbundanceAlleles
    Boolean assemblyAssemblyVerbose
    String displayDisplayAlleles
  }
  command <<<
    hisatgenotype_locus.py \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(numNumEditDist) then ("--num-editdist " +  '"' + numNumEditDist + '"') else ""} \
      ~{if defined(perPerBaseErrorRate) then ("--perbase-errorrate " +  '"' + perPerBaseErrorRate + '"') else ""} \
      ~{if defined(perPerBaseSnpRate) then ("--perbase-snprate " +  '"' + perPerBaseSnpRate + '"') else ""} \
      ~{if defined(skipSkipFragmentRegions) then ("--skip-fragment-regions " +  '"' + skipSkipFragmentRegions + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(verboseVerboseLevel) then ("--verbose-level " +  '"' + verboseVerboseLevel + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(assemblyAssemblyBase) then ("--assembly-base " +  '"' + assemblyAssemblyBase + '"') else ""} \
      ~{true="--assembly" false="" assemblyAssembly} \
      ~{true="--no-error-correction" false="" noNoErrorCorrection} \
      ~{true="--keep-alignment" false="" keepKeepAlignment} \
      ~{if defined(onlyOnlyLocusList) then ("--only-locus-list " +  '"' + onlyOnlyLocusList + '"') else ""} \
      ~{true="--discordant" false="" discordantDiscordant} \
      ~{true="--type-primary-exons" false="" typeTypePrimaryExons} \
      ~{true="--keep-low-abundance-alleles" false="" keepKeepLowAbundanceAlleles} \
      ~{true="--assembly-verbose" false="" assemblyAssemblyVerbose} \
      ~{if defined(displayDisplayAlleles) then ("--display-alleles " +  '"' + displayDisplayAlleles + '"') else ""}
  >>>
}