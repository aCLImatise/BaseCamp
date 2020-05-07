version 1.0

task WhatsGNUMain.py {
  input {
    String mkMkDatabase
    String databaseDatabase
    Boolean picklePickle
    Boolean sqlSql
    Boolean rR
    String databaseDatabaseMode
    Boolean riRi
    String outputOutputFolder
    Boolean forceForce
    String prefixPrefix
    Boolean topTopGenomes
    String strainStrainHits
    String metadataMetadata
    Boolean idsIdsHits
    Boolean faaFaaGnu0
    Boolean blastpBlastp
    Boolean outputOutputBlastp
    Boolean wW
    Boolean cC
    Boolean quietQuiet
    String? queryQueryFaa
  }
  command <<<
    WhatsGNU_main.py \
      ~{queryQueryFaa} \
      ~{if defined(mkMkDatabase) then ("--mkdatabase " +  '"' + mkMkDatabase + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--pickle" false="" picklePickle} \
      ~{true="--sql" false="" sqlSql} \
      ~{true="-r" false="" rR} \
      ~{if defined(databaseDatabaseMode) then ("--database_mode " +  '"' + databaseDatabaseMode + '"') else ""} \
      ~{true="-ri" false="" riRi} \
      ~{if defined(outputOutputFolder) then ("--output_folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--topgenomes" false="" topTopGenomes} \
      ~{if defined(strainStrainHits) then ("--strainhits " +  '"' + strainStrainHits + '"') else ""} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{true="--ids_hits" false="" idsIdsHits} \
      ~{true="--faa_GNU_0" false="" faaFaaGnu0} \
      ~{true="--blastp" false="" blastpBlastp} \
      ~{true="--output_blastp" false="" outputOutputBlastp} \
      ~{true="-w" false="" wW} \
      ~{true="-c" false="" cC} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}