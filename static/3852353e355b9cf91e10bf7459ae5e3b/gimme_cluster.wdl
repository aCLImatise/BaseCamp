version 1.0

task GimmeCluster {
  input {
    Boolean sS
    String tT
    Int nNThreads
    String? inputInputFile
    String? outdirOutdir
  }
  command <<<
    gimme cluster \
      ~{inputInputFile} \
      ~{true="-s" false="" sS} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{outdirOutdir}
  >>>
}