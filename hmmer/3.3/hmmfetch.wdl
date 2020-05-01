version 1.0

task Hmmfetch {
  input {
    Boolean fF
    String oO
    Boolean oO
    Boolean indexIndex
  }
  command <<<
    hmmfetch \
      ~{true="-f" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{true="--index" false="" indexIndex}
  >>>
}