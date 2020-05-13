version 1.0

task GimmeLocation {
  input {
    Int sS
    String iI
    String cC
    String? pfmPfmFile
    String? fFAFile
  }
  command <<<
    gimme location \
      ~{pfmPfmFile} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{fFAFile}
  >>>
}