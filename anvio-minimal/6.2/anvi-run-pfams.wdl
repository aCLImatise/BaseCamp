version 1.0

task AnviRunPfams {
  input {
    String contigsContigsDb
    String pfamPfamDataDir
    String numNumThreads
  }
  command <<<
    anvi-run-pfams \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(pfamPfamDataDir) then ("--pfam-data-dir " +  '"' + pfamPfamDataDir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""}
  >>>
}