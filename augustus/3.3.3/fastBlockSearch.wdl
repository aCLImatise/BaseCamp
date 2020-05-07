version 1.0

task FastBlockSearch {
  input {
    String? fastFastBlocksSearch
    String? seqSeqSfa
    String? famFamPrFl
  }
  command <<<
    fastBlockSearch \
      ~{fastFastBlocksSearch} \
      ~{seqSeqSfa} \
      ~{famFamPrFl}
  >>>
}