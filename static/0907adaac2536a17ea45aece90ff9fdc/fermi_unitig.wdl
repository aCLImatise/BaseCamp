version 1.0

task FermiUnitig {
  input {
    Int lL
    Int tT
    File rR
    String? readsReadsFmd
  }
  command <<<
    fermi unitig \
      ~{readsReadsFmd} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}