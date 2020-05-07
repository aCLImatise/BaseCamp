version 1.0

task Concat {
  input {
    Directory fF
    String eE
    File prefixPrefix
    String oO
    String? extensionExtension
    String? linkerLinker
  }
  command <<<
    concat \
      ~{extensionExtension} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--Prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{linkerLinker}
  >>>
}