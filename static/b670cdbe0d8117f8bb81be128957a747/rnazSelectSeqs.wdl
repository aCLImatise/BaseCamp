version 1.0

task RnazSelectSeqs.pl {
  input {
    String numNumSeqs
    String numNumSamples
    String optOptId
    String maxMaxId
    Boolean noNoReference
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazSelectSeqs.pl \
      ~{fileFile} \
      ~{if defined(numNumSeqs) then ("--num-seqs " +  '"' + numNumSeqs + '"') else ""} \
      ~{if defined(numNumSamples) then ("--num-samples " +  '"' + numNumSamples + '"') else ""} \
      ~{if defined(optOptId) then ("--opt-id " +  '"' + optOptId + '"') else ""} \
      ~{if defined(maxMaxId) then ("--max-id " +  '"' + maxMaxId + '"') else ""} \
      ~{true="--no-reference" false="" noNoReference} \
      ~{true="--man" false="" manMan}
  >>>
}