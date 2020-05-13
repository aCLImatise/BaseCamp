version 1.0

task AnviScriptPredictCPRGenomes {
  input {
    String contigsContigsDb
    String profileProfileDb
    String collectionCollectionName
    Boolean listListCollections
    Boolean reportReportOnlyCpr
    Int minMinGenomeSize
    Int minMinPercentCompletion
    Int maxMaxPercentRedundancy
    Int minMinClassProbability
    File outputOutputFile
    Boolean justJustDoIt
    String? classifierClassifierFile
  }
  command <<<
    anvi-script-predict-CPR-genomes \
      ~{classifierClassifierFile} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--report-only-cpr" false="" reportReportOnlyCpr} \
      ~{if defined(minMinGenomeSize) then ("--min-genome-size " +  '"' + minMinGenomeSize + '"') else ""} \
      ~{if defined(minMinPercentCompletion) then ("--min-percent-completion " +  '"' + minMinPercentCompletion + '"') else ""} \
      ~{if defined(maxMaxPercentRedundancy) then ("--max-percent-redundancy " +  '"' + maxMaxPercentRedundancy + '"') else ""} \
      ~{if defined(minMinClassProbability) then ("--min-class-probability " +  '"' + minMinClassProbability + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}