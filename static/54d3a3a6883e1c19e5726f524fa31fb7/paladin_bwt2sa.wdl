version 1.0

task PaladinBwt2sa {
  input {
    Boolean iI
    String? 3232
    String? inInBwt
    String? outsOutsA
  }
  command <<<
    paladin bwt2sa \
      ~{3232} \
      ~{true="-i" false="" iI} \
      ~{inInBwt} \
      ~{outsOutsA}
  >>>
}