version 1.0

task AlleyoopSnpeval {
  input {
    Int maxMaxReadLength
    Int minMinBaseQual
    String threadsThreads
    String? bamBam
  }
  command <<<
    alleyoop snpeval \
      ~{bamBam} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}