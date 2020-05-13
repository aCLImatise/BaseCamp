version 1.0

task SplitSequences.py {
  input {
    String tT
    String iI
    String oO
  }
  command <<<
    split_sequences.py \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}