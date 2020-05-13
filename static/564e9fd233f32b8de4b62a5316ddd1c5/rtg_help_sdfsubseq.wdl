version 1.0

task RtgHelpSdfsubseq {
  input {
    String inputInput
    Boolean fastFastA
    Boolean fastFastQ
    String reverseReverseComplement
  }
  command <<<
    rtg help sdfsubseq \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{if defined(reverseReverseComplement) then ("--reverse-complement " +  '"' + reverseReverseComplement + '"') else ""}
  >>>
}