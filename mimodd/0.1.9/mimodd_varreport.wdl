version 1.0

task MimoddVarreport {
  input {
    String ofileOfile
    String fF
    String speciesSpecies
    String linkLink
    String? inputInputFile
  }
  command <<<
    mimodd varreport \
      ~{inputInputFile} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""}
  >>>
}