version 1.0

task StrideAll {
  input {
    String readReadLength
    String insertInsertSize
    String threadThread
    Int pePeMode
    String kmKmErSize
    String kmKmErThreshold
    String minMinOverlap
  }
  command <<<
    stride all \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(insertInsertSize) then ("--insert-size " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(pePeMode) then ("--pe-mode " +  '"' + pePeMode + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(kmKmErThreshold) then ("--kmer-threshold " +  '"' + kmKmErThreshold + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""}
  >>>
}