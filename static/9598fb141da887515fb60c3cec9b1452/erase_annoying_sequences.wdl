version 1.0

task EraseAnnoyingSequences.py {
  input {
    String iI
    String oO
  }
  command <<<
    erase_annoying_sequences.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}