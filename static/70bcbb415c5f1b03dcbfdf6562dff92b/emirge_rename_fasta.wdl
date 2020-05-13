version 1.0

task EmirgeRenameFasta.py {
  input {
    String probProbMin
    String recordRecordPrefix
    Boolean noNoN
    Boolean noNoTrimN
  }
  command <<<
    emirge_rename_fasta.py \
      ~{if defined(probProbMin) then ("--prob_min " +  '"' + probProbMin + '"') else ""} \
      ~{if defined(recordRecordPrefix) then ("--record_prefix " +  '"' + recordRecordPrefix + '"') else ""} \
      ~{true="--no_N" false="" noNoN} \
      ~{true="--no_trim_N" false="" noNoTrimN}
  >>>
}