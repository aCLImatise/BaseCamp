version 1.0

task CactusFilterSmallFastaSequences.py {
  input {
    String prefixPrefix
    Int lengthLength
  }
  command <<<
    cactus_filterSmallFastaSequences.py \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""}
  >>>
}