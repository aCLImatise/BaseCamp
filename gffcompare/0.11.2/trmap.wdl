version 1.0

task Trmap {
  input {
    Boolean sS
    String oO
    Boolean strictStrictMatch
    String? refRefGff
    String? queryQueryGff
  }
  command <<<
    trmap \
      ~{refRefGff} \
      ~{true="-S" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--strict-match" false="" strictStrictMatch} \
      ~{queryQueryGff}
  >>>
}