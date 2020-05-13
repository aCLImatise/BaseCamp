version 1.0

task AnviEstimateScgTaxonomy {
  input {
    String contigsContigsDb
    Boolean metaMetaGenomeMode
    String profileProfileDb
    String collectionCollectionName
    File metaMetaGenomes
    File outputOutputFile
    File outputOutputFilePrefix
    String taxonomicTaxonomicLevel
    Boolean matrixMatrixFormat
    Boolean rawRawOutput
    String numNumThreads
    String scgScgNameForMetaGenomeMode
    File reportReportScgFrequencies
    Boolean justJustDoIt
    Boolean simplifySimplifyTaxonomyInformation
    Boolean computeComputeScgCoverages
    Boolean updateUpdateProfileDbWithTaxonomy
    File taxonomyTaxonomyDatabase
  }
  command <<<
    anvi-estimate-scg-taxonomy \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{true="--metagenome-mode" false="" metaMetaGenomeMode} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(metaMetaGenomes) then ("--metagenomes " +  '"' + metaMetaGenomes + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{if defined(taxonomicTaxonomicLevel) then ("--taxonomic-level " +  '"' + taxonomicTaxonomicLevel + '"') else ""} \
      ~{true="--matrix-format" false="" matrixMatrixFormat} \
      ~{true="--raw-output" false="" rawRawOutput} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(scgScgNameForMetaGenomeMode) then ("--scg-name-for-metagenome-mode " +  '"' + scgScgNameForMetaGenomeMode + '"') else ""} \
      ~{if defined(reportReportScgFrequencies) then ("--report-scg-frequencies " +  '"' + reportReportScgFrequencies + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{true="--simplify-taxonomy-information" false="" simplifySimplifyTaxonomyInformation} \
      ~{true="--compute-scg-coverages" false="" computeComputeScgCoverages} \
      ~{true="--update-profile-db-with-taxonomy" false="" updateUpdateProfileDbWithTaxonomy} \
      ~{if defined(taxonomyTaxonomyDatabase) then ("--taxonomy-database " +  '"' + taxonomyTaxonomyDatabase + '"') else ""}
  >>>
}