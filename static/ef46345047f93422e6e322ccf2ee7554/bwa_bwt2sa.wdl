version 1.0

task BwaBwt2sa {
  input {
    Boolean iI
    String? 3232
    String? inInBwt
    String? outsOutsA
  }
  command <<<
    bwa bwt2sa \
      ~{3232} \
      ~{true="-i" false="" iI} \
      ~{inInBwt} \
      ~{outsOutsA}
  >>>
}