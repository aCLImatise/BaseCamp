version 1.0

task RgtTools.pyEncode {
  input {
    String iI
    String oO
  }
  command <<<
    rgt-tools.py encode \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}