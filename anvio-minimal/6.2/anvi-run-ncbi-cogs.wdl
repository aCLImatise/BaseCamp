version 1.0

task AnviRunNcbiCogs {
  input {
    String contigsContigsDb
    String cogCogDataDir
    String numNumThreads
    Boolean sensitiveSensitive
    File temporaryTemporaryDirPath
    String searchSearchWith
  }
  command <<<
    anvi-run-ncbi-cogs \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(cogCogDataDir) then ("--cog-data-dir " +  '"' + cogCogDataDir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{if defined(temporaryTemporaryDirPath) then ("--temporary-dir-path " +  '"' + temporaryTemporaryDirPath + '"') else ""} \
      ~{if defined(searchSearchWith) then ("--search-with " +  '"' + searchSearchWith + '"') else ""}
  >>>
}