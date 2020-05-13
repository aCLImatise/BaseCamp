version 1.0

task SpadesBwaBwt2sa {
  input {
    Boolean iI
    String? bwaBwa
    String? bwt2saBwt2sa
    String? 3232
    String? inInBwt
    String? outsOutsA
  }
  command <<<
    spades-bwa bwt2sa \
      ~{bwaBwa} \
      ~{true="-i" false="" iI} \
      ~{bwt2saBwt2sa} \
      ~{3232} \
      ~{inInBwt} \
      ~{outsOutsA}
  >>>
}