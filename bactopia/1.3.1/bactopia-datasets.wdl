version 1.0

task BactopiaDatasets.py {
  input {
    String aribaAriba
    String speciesSpecies
    Boolean skipSkipProKkA
    Boolean includeIncludeGenus
    Float identityIdentity
    Float overlapOverlap
    Int maxMaxMemory
    Boolean fastFastCluster
    Boolean skipSkipMinMer
    Boolean skipSkipPlsDb
    Int cpusCpus
    Boolean clearClearCache
    Boolean forceForce
    Boolean forceForceAriba
    Boolean forceForceMlst
    Boolean forceForceProKkA
    Boolean forceForceMinMer
    Boolean forceForcePlsDb
    Boolean keepKeepFiles
    Boolean listListDatasets
    Boolean dependsDepends
    Boolean verboseVerbose
    Boolean silentSilent
    String? outputOutputDirectory
  }
  command <<<
    bactopia-datasets.py \
      ~{outputOutputDirectory} \
      ~{if defined(aribaAriba) then ("--ariba " +  '"' + aribaAriba + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{true="--skip_prokka" false="" skipSkipProKkA} \
      ~{true="--include_genus" false="" includeIncludeGenus} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--max_memory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{true="--fast_cluster" false="" fastFastCluster} \
      ~{true="--skip_minmer" false="" skipSkipMinMer} \
      ~{true="--skip_plsdb" false="" skipSkipPlsDb} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--clear_cache" false="" clearClearCache} \
      ~{true="--force" false="" forceForce} \
      ~{true="--force_ariba" false="" forceForceAriba} \
      ~{true="--force_mlst" false="" forceForceMlst} \
      ~{true="--force_prokka" false="" forceForceProKkA} \
      ~{true="--force_minmer" false="" forceForceMinMer} \
      ~{true="--force_plsdb" false="" forceForcePlsDb} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{true="--list_datasets" false="" listListDatasets} \
      ~{true="--depends" false="" dependsDepends} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent}
  >>>
}