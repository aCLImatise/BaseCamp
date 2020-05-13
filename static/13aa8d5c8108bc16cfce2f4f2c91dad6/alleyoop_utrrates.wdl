version 1.0

task AlleyoopUtrrates {
  input {
    String threadsThreads
    String bedBed
    Int maxMaxReadLength
    String? bamBam
  }
  command <<<
    alleyoop utrrates \
      ~{bamBam} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""}
  >>>
}