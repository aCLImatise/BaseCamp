version 1.0

task AnviScanTrnas {
  input {
    String contigsContigsDb
    String numNumThreads
    File logLogFile
    File trnaTrnaHitsFile
    Int trnaTrnaCutOffScore
    Boolean justJustDoIt
  }
  command <<<
    anvi-scan-trnas \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(trnaTrnaHitsFile) then ("--trna-hits-file " +  '"' + trnaTrnaHitsFile + '"') else ""} \
      ~{if defined(trnaTrnaCutOffScore) then ("--trna-cutoff-score " +  '"' + trnaTrnaCutOffScore + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}