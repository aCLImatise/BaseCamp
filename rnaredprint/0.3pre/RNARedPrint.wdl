version 1.0

task RNARedPrint {
  input {
    String numNum
    Boolean countCount
    Boolean prefixPrefix
  }
  command <<<
    RNARedPrint \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{true="--prefix" false="" prefixPrefix}
  >>>
}