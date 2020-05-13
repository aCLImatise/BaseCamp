version 1.0

task WtdbgConvert {
  input {
    String oO
  }
  command <<<
    wtdbgConvert \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}