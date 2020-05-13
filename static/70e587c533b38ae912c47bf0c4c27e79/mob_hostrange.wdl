version 1.0

task MobHostrange {
  input {
    Boolean exactExactMatch
    Boolean looseLooseMatch
    String repliconRepliconName
    String relaxRelaxAseName
    String relaxRelaxAseAccession
    String clusterClusterId
    Boolean hostHostRangeDetailed
    String databaseDatabaseDirectory
    String outdirOutdir
    String inputInputSeq
    Boolean debugDebug
  }
  command <<<
    mob_hostrange \
      ~{true="--exact_match" false="" exactExactMatch} \
      ~{true="--loose_match" false="" looseLooseMatch} \
      ~{if defined(repliconRepliconName) then ("--replicon_name " +  '"' + repliconRepliconName + '"') else ""} \
      ~{if defined(relaxRelaxAseName) then ("--relaxase_name " +  '"' + relaxRelaxAseName + '"') else ""} \
      ~{if defined(relaxRelaxAseAccession) then ("--relaxase_accession " +  '"' + relaxRelaxAseAccession + '"') else ""} \
      ~{if defined(clusterClusterId) then ("--cluster_id " +  '"' + clusterClusterId + '"') else ""} \
      ~{true="--host_range_detailed" false="" hostHostRangeDetailed} \
      ~{if defined(databaseDatabaseDirectory) then ("--database_directory " +  '"' + databaseDatabaseDirectory + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(inputInputSeq) then ("--inputseq " +  '"' + inputInputSeq + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}