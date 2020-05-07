version 1.0

task AnviScriptMergeCollections {
  input {
    String contigsContigsDb
    File iI
    String outputOutputFile
  }
  command <<<
    anvi-script-merge-collections \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}