version 1.0

task GappaExamineAssign {
  input {
    String jJPlacePath
    String taxTaxOnFile
    String rootRootOutGroup
    String taxonomyTaxonomy
    String ranksRanksString
    String subSubTaxOPath
    String maxMaxLevel
    Float distributionDistributionRatio
    Boolean resolveResolveMissingPaths
    String outOutDir
    String camiCami
    String sampleSampleId
    Boolean kronaKrona
    Boolean sativaSativa
    Boolean bestBestHit
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa examine assign \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(taxTaxOnFile) then ("--taxon-file " +  '"' + taxTaxOnFile + '"') else ""} \
      ~{if defined(rootRootOutGroup) then ("--root-outgroup " +  '"' + rootRootOutGroup + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(ranksRanksString) then ("--ranks-string " +  '"' + ranksRanksString + '"') else ""} \
      ~{if defined(subSubTaxOPath) then ("--sub-taxopath " +  '"' + subSubTaxOPath + '"') else ""} \
      ~{if defined(maxMaxLevel) then ("--max-level " +  '"' + maxMaxLevel + '"') else ""} \
      ~{if defined(distributionDistributionRatio) then ("--distribution-ratio " +  '"' + distributionDistributionRatio + '"') else ""} \
      ~{true="--resolve-missing-paths" false="" resolveResolveMissingPaths} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(camiCami) then ("--cami " +  '"' + camiCami + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sample-id " +  '"' + sampleSampleId + '"') else ""} \
      ~{true="--krona" false="" kronaKrona} \
      ~{true="--sativa" false="" sativaSativa} \
      ~{true="--best-hit" false="" bestBestHit} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}