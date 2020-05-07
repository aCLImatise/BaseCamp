version 1.0

task HisatgenotypeBuildGenome.py {
  input {
    String baseBaseFname
    String threadsThreads
    String databaseDatabaseList
    Boolean commonCommonVar
    Boolean clinClinVar
    Int interInterGap
    Int intraIntraGap
    String alignerAligner
    Boolean linearLinearIndex
    Boolean verboseVerbose
  }
  command <<<
    hisatgenotype_build_genome.py \
      ~{if defined(baseBaseFname) then ("--base-fname " +  '"' + baseBaseFname + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(databaseDatabaseList) then ("--database-list " +  '"' + databaseDatabaseList + '"') else ""} \
      ~{true="--commonvar" false="" commonCommonVar} \
      ~{true="--clinvar" false="" clinClinVar} \
      ~{if defined(interInterGap) then ("--inter-gap " +  '"' + interInterGap + '"') else ""} \
      ~{if defined(intraIntraGap) then ("--intra-gap " +  '"' + intraIntraGap + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="--linear-index" false="" linearLinearIndex} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}