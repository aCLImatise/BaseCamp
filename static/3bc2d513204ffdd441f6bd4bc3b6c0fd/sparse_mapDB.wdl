version 1.0

task SparseMapDB {
  input {
    String dbnameDbname
    String mapMapDb
    String seqSeqList
    String nNThread
    Boolean maltMalt
    Boolean appendAppend
  }
  command <<<
    sparse mapDB \
      ~{if defined(dbnameDbname) then ("--dbname " +  '"' + dbnameDbname + '"') else ""} \
      ~{if defined(mapMapDb) then ("--mapDB " +  '"' + mapMapDb + '"') else ""} \
      ~{if defined(seqSeqList) then ("--seqlist " +  '"' + seqSeqList + '"') else ""} \
      ~{if defined(nNThread) then ("--n_thread " +  '"' + nNThread + '"') else ""} \
      ~{true="--malt" false="" maltMalt} \
      ~{true="--append" false="" appendAppend}
  >>>
}