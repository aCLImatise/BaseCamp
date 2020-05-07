version 1.0

task Phd2afg {
  input {
    String dD
    File oO
    File cC
    File mM
  }
  command <<<
    phd2afg \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}