version 1.0

task SmofSplit {
  input {
    String numberNumber
    Boolean seqsSeqs
    String prefixPrefix
    String? inputInput
  }
  command <<<
    smof split \
      ~{inputInput} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{true="--seqs" false="" seqsSeqs} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}