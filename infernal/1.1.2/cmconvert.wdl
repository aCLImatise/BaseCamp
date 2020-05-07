version 1.0

task Cmconvert {
  input {
    String oO
    Boolean mlMlHmm
    Boolean fFHmm
  }
  command <<<
    cmconvert \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--mlhmm" false="" mlMlHmm} \
      ~{true="--fhmm" false="" fFHmm}
  >>>
}