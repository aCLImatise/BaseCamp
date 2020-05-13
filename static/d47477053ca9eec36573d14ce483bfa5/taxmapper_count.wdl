version 1.0

task TaxmapperCount {
  input {
    String iI
    String out1Out1
    String out2Out2
  }
  command <<<
    taxmapper count \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(out1Out1) then ("--out1 " +  '"' + out1Out1 + '"') else ""} \
      ~{if defined(out2Out2) then ("--out2 " +  '"' + out2Out2 + '"') else ""}
  >>>
}