version 1.0

task AnviEstimateGenomeCompleteness {
  input {
    String contigsContigsDb
    File externalExternalGenomes
    String profileProfileDb
    String collectionCollectionName
    Boolean listListCollections
    Boolean justJustDoIt
    Boolean conciseConcise
    File outputOutputFile
  }
  command <<<
    anvi-estimate-genome-completeness \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(externalExternalGenomes) then ("--external-genomes " +  '"' + externalExternalGenomes + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{true="--concise" false="" conciseConcise} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}