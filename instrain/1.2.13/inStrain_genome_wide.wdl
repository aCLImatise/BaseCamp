version 1.0

task InStrainGenomeWide {
  input {
    Boolean sS
    Boolean mmMmLevel
    String isIs
    Boolean storeStoreEverything
    String processesProcesses
    Boolean debugDebug
  }
  command <<<
    inStrain genome_wide \
      ~{true="-s" false="" sS} \
      ~{true="--mm_level" false="" mmMmLevel} \
      ~{if defined(isIs) then ("--IS " +  '"' + isIs + '"') else ""} \
      ~{true="--store_everything" false="" storeStoreEverything} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}