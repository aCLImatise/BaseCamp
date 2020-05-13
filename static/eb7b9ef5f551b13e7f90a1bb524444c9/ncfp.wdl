version 1.0

task Ncfp {
  input {
    Boolean uniprotUniprot
    Boolean stockholmStockholm
    String cacheCacheDir
    String cacheCacheStem
    String batchBatchSize
    String retriesRetries
    String limitLimit
    File fileFileStem
    Boolean keepKeepCache
    String skippedSkippedFile
    String logLogFile
    Boolean verboseVerbose
    Boolean disableDisableTQdm
    String? inInFname
    String? outOutDirname
    String? emailEmail
  }
  command <<<
    ncfp \
      ~{inInFname} \
      ~{true="--uniprot" false="" uniprotUniprot} \
      ~{true="--stockholm" false="" stockholmStockholm} \
      ~{if defined(cacheCacheDir) then ("--cachedir " +  '"' + cacheCacheDir + '"') else ""} \
      ~{if defined(cacheCacheStem) then ("--cachestem " +  '"' + cacheCacheStem + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batchsize " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(fileFileStem) then ("--filestem " +  '"' + fileFileStem + '"') else ""} \
      ~{true="--keepcache" false="" keepKeepCache} \
      ~{if defined(skippedSkippedFile) then ("--skippedfile " +  '"' + skippedSkippedFile + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--disabletqdm" false="" disableDisableTQdm} \
      ~{outOutDirname} \
      ~{emailEmail}
  >>>
}