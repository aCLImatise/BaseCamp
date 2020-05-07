version 1.0

task FermiRemap {
  input {
    Int lL
    Int cC
    Int dD
    File rR
    Int tT
    String? readsReadsFmd
    String? contigsContigsFq
  }
  command <<<
    fermi remap \
      ~{readsReadsFmd} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{contigsContigsFq}
  >>>
}