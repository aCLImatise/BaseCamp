version 1.0

task RgiKmerQuery {
  input {
    String oO
    String inputInput
    Boolean bwtBwt
    Boolean rgiRgi
    Boolean fastFastA
    String kmKmErSize
    Int minimumMinimum
    String threadsThreads
    String outputOutput
    Boolean localLocal
    Boolean debugDebug
  }
  command <<<
    rgi kmer_query \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--bwt" false="" bwtBwt} \
      ~{true="--rgi" false="" rgiRgi} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(kmKmErSize) then ("--kmer_size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(minimumMinimum) then ("--minimum " +  '"' + minimumMinimum + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--local" false="" localLocal} \
      ~{true="--debug" false="" debugDebug}
  >>>
}