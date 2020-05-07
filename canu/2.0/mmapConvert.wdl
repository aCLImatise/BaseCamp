version 1.0

task MmapConvert {
  input {
    String oO
  }
  command <<<
    mmapConvert \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}