version 1.0

task Bg2bw {
  input {
    String iI
    String cC
    String oO
  }
  command <<<
    bg2bw \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}