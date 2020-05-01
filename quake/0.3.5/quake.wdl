version 1.0

task Quake.py {
  input {
    Boolean noNoJelly
    Boolean noNoCount
    Boolean intInt
    String hashHashSize
    Boolean noNoCut
    String ratioRatio
    Int lL
    Boolean uU
    String tT
    Boolean headersHeaders
    Boolean logLog
  }
  command <<<
    quake.py \
      ~{true="--no_jelly" false="" noNoJelly} \
      ~{true="--no_count" false="" noNoCount} \
      ~{true="--int" false="" intInt} \
      ~{if defined(hashHashSize) then ("--hash_size " +  '"' + hashHashSize + '"') else ""} \
      ~{true="--no_cut" false="" noNoCut} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--headers" false="" headersHeaders} \
      ~{true="--log" false="" logLog}
  >>>
}