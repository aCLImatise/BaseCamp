version 1.0

task Ema {
  input {
    String wW
    String oO
  }
  command <<<
    ema \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}