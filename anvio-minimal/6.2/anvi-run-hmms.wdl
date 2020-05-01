version 1.0

task AnviRunHmms {
  input {
    String contigsContigsDb
    String hH
    String iI
    Boolean alsoAlsoScanTrnas
    String numNumThreads
    Boolean justJustDoIt
  }
  command <<<
    anvi-run-hmms \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="--also-scan-trnas" false="" alsoAlsoScanTrnas} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}