version 1.0

task AnviScriptGetHmmHitsPerGeneCall {
  input {
    String contigsContigsDb
    String hmmHmmSource
    File outputOutputFile
  }
  command <<<
    anvi-script-get-hmm-hits-per-gene-call \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(hmmHmmSource) then ("--hmm-source " +  '"' + hmmHmmSource + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}