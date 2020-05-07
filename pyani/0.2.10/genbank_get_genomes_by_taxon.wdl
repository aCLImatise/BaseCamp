version 1.0

task GenbankGetGenomesByTaxon.py {
  input {
    String outdirOutdir
    String taxTaxOn
    Boolean verboseVerbose
    Boolean forceForce
    Boolean noNoClobber
    String logLogFile
    String formatFormat
    String emailEmail
    String retriesRetries
    String batchBatchSize
    String timeoutTimeout
  }
  command <<<
    genbank_get_genomes_by_taxon.py \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(taxTaxOn) then ("--taxon " +  '"' + taxTaxOn + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force" false="" forceForce} \
      ~{true="--noclobber" false="" noNoClobber} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batchsize " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""}
  >>>
}