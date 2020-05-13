version 1.0

task GetSeqsFromList.py {
  input {
    Boolean partialPartial
    Boolean excludeExclude
    String? fastFastAFilename
    String? listListFilename
  }
  command <<<
    get_seqs_from_list.py \
      ~{fastFastAFilename} \
      ~{true="--partial" false="" partialPartial} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{listListFilename}
  >>>
}