version 1.0

task AnviDeleteHmms {
  input {
    String contigsContigsDb
    String hmmHmmSource
    Boolean listListHmmSources
    Boolean justJustDoIt
  }
  command <<<
    anvi-delete-hmms \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(hmmHmmSource) then ("--hmm-source " +  '"' + hmmHmmSource + '"') else ""} \
      ~{true="--list-hmm-sources" false="" listListHmmSources} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}