version 1.0

task IgdiscoverIgblast {
  input {
    String threadsThreads
    Boolean cacheCache
    Boolean noNoCache
    Boolean penaltyPenalty
    String speciesSpecies
    String sequenceSequenceType
    File rawRaw
    String limitLimit
    String renameRename
    File statsStats
    String? databaseDatabase
    String? fastFastA
  }
  command <<<
    igdiscover igblast \
      ~{databaseDatabase} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--cache" false="" cacheCache} \
      ~{true="--no-cache" false="" noNoCache} \
      ~{true="--penalty" false="" penaltyPenalty} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence-type " +  '"' + sequenceSequenceType + '"') else ""} \
      ~{if defined(rawRaw) then ("--raw " +  '"' + rawRaw + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(renameRename) then ("--rename " +  '"' + renameRename + '"') else ""} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{fastFastA}
  >>>
}