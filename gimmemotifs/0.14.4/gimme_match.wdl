version 1.0

task GimmeMatch {
  input {
    String dD
    Int nN
    File oO
    String? pfmPfmFile
  }
  command <<<
    gimme match \
      ~{pfmPfmFile} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}