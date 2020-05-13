version 1.0

task KodojaBuild.py {
  input {
    String outputOutputDir
    String threadsThreads
    String hostHostTaxid
    String downloadDownloadParallel
    Boolean noNoDownload
    Boolean eE
    Boolean xX
    Boolean allAllViruses
    String krakenKrakenTax
    String krakenKrakenKmEr
    String krakenKrakenMinimizer
    String dbDbTag
  }
  command <<<
    kodoja_build.py \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(hostHostTaxid) then ("--host_taxid " +  '"' + hostHostTaxid + '"') else ""} \
      ~{if defined(downloadDownloadParallel) then ("--download_parallel " +  '"' + downloadDownloadParallel + '"') else ""} \
      ~{true="--no_download" false="" noNoDownload} \
      ~{true="-e" false="" eE} \
      ~{true="-x" false="" xX} \
      ~{true="--all_viruses" false="" allAllViruses} \
      ~{if defined(krakenKrakenTax) then ("--kraken_tax " +  '"' + krakenKrakenTax + '"') else ""} \
      ~{if defined(krakenKrakenKmEr) then ("--kraken_kmer " +  '"' + krakenKrakenKmEr + '"') else ""} \
      ~{if defined(krakenKrakenMinimizer) then ("--kraken_minimizer " +  '"' + krakenKrakenMinimizer + '"') else ""} \
      ~{if defined(dbDbTag) then ("--db_tag " +  '"' + dbDbTag + '"') else ""}
  >>>
}