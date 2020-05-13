version 1.0

task RibotricerOrfsSeq {
  input {
    String ribotRibotRicerIndex
    String fastFastA
    String saveSaveTo
  }
  command <<<
    ribotricer orfs-seq \
      ~{if defined(ribotRibotRicerIndex) then ("--ribotricer_index " +  '"' + ribotRibotRicerIndex + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(saveSaveTo) then ("--saveto " +  '"' + saveSaveTo + '"') else ""}
  >>>
}