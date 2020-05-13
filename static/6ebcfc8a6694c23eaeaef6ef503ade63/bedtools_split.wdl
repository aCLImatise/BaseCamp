version 1.0

task BedtoolsSplit {
  input {
    String iI
    String nN
    String? optionsOptions
  }
  command <<<
    bedtools split \
      ~{optionsOptions} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}