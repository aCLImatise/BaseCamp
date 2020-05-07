version 1.0

task FunannotateUtilSpecies {
  input {
    String sS
    String aA
    String pP
    String dD
    String? speciesSpeciesPy
  }
  command <<<
    funannotate util species \
      ~{speciesSpeciesPy} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}