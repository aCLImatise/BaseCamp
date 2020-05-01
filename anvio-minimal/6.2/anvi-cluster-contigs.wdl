version 1.0

task AnviClusterContigs {
  input {
    String profileProfileDb
    String contigsContigsDb
    String collectionCollectionName
    String driverDriver
    String numNumThreads
    Boolean justJustDoIt
  }
  command <<<
    anvi-cluster-contigs \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(driverDriver) then ("--driver " +  '"' + driverDriver + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}