version 1.0

task MmseqsTranslatenucs {
  input {
    Boolean translationTranslationTable
    Boolean addAddOrfStop
    Boolean vV
    Boolean threadsThreads
  }
  command <<<
    mmseqs translatenucs \
      ~{true="--translation-table" false="" translationTranslationTable} \
      ~{true="--add-orf-stop" false="" addAddOrfStop} \
      ~{true="-v" false="" vV} \
      ~{true="--threads" false="" threadsThreads}
  >>>
}