version 1.0

task GappaPrepareTaxonomyTree {
  input {
    String taxTaxOnListFile
    String taxonomyTaxonomyFile
    Boolean keepKeepSingletonInnerNodes
    Boolean keepKeepInnerNodeNames
    Int maxMaxLevel
    String outOutDir
    String fileFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa prepare taxonomy-tree \
      ~{optionsOptions} \
      ~{if defined(taxTaxOnListFile) then ("--taxon-list-file " +  '"' + taxTaxOnListFile + '"') else ""} \
      ~{if defined(taxonomyTaxonomyFile) then ("--taxonomy-file " +  '"' + taxonomyTaxonomyFile + '"') else ""} \
      ~{true="--keep-singleton-inner-nodes" false="" keepKeepSingletonInnerNodes} \
      ~{true="--keep-inner-node-names" false="" keepKeepInnerNodeNames} \
      ~{if defined(maxMaxLevel) then ("--max-level " +  '"' + maxMaxLevel + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}