version 1.0

task AnviRunScgTaxonomy {
  input {
    String contigsContigsDb
    File scgsScgsTaxonomyDataDir
    String minMinPercentIdentity
    String numNumParallelProcesses
    String numNumThreads
    Int writeWriteBufferSize
  }
  command <<<
    anvi-run-scg-taxonomy \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(scgsScgsTaxonomyDataDir) then ("--scgs-taxonomy-data-dir " +  '"' + scgsScgsTaxonomyDataDir + '"') else ""} \
      ~{if defined(minMinPercentIdentity) then ("--min-percent-identity " +  '"' + minMinPercentIdentity + '"') else ""} \
      ~{if defined(numNumParallelProcesses) then ("--num-parallel-processes " +  '"' + numNumParallelProcesses + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(writeWriteBufferSize) then ("--write-buffer-size " +  '"' + writeWriteBufferSize + '"') else ""}
  >>>
}