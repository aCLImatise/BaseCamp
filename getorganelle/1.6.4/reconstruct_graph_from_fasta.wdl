version 1.0

task ReconstructGraphFromFasta.py {
  input {
    String iI
    String oO
    String kK
    String circularCircular
    Boolean singleSingleChain
    String outOutKg
  }
  command <<<
    reconstruct_graph_from_fasta.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(circularCircular) then ("--circular " +  '"' + circularCircular + '"') else ""} \
      ~{true="--single-chain" false="" singleSingleChain} \
      ~{if defined(outOutKg) then ("--out-kg " +  '"' + outOutKg + '"') else ""}
  >>>
}