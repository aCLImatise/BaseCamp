version 1.0

task XS {
  input {
    Boolean vV
    Boolean tT
    String hfHf
    Boolean iI
    Boolean oO
    String lsLs
    Int ldLd
    Boolean nN
    Boolean fF
    String rnRn
    String riRi
    String raRa
    String rmRm
    Boolean rrRr
    String qtQt
    String qfQf
    String qcQc
    Boolean ehEh
    Boolean eoEo
    Boolean edEd
    Boolean edbEdb
    Boolean esEs
    Boolean sS
  }
  command <<<
    XS \
      ~{true="-v" false="" vV} \
      ~{true="-t" false="" tT} \
      ~{if defined(hfHf) then ("-hf " +  '"' + hfHf + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{if defined(lsLs) then ("-ls " +  '"' + lsLs + '"') else ""} \
      ~{if defined(ldLd) then ("-ld " +  '"' + ldLd + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-f" false="" fF} \
      ~{if defined(rnRn) then ("-rn " +  '"' + rnRn + '"') else ""} \
      ~{if defined(riRi) then ("-ri " +  '"' + riRi + '"') else ""} \
      ~{if defined(raRa) then ("-ra " +  '"' + raRa + '"') else ""} \
      ~{if defined(rmRm) then ("-rm " +  '"' + rmRm + '"') else ""} \
      ~{true="-rr" false="" rrRr} \
      ~{if defined(qtQt) then ("-qt " +  '"' + qtQt + '"') else ""} \
      ~{if defined(qfQf) then ("-qf " +  '"' + qfQf + '"') else ""} \
      ~{if defined(qcQc) then ("-qc " +  '"' + qcQc + '"') else ""} \
      ~{true="-eh" false="" ehEh} \
      ~{true="-eo" false="" eoEo} \
      ~{true="-ed" false="" edEd} \
      ~{true="-edb" false="" edbEdb} \
      ~{true="-es" false="" esEs} \
      ~{true="-s" false="" sS}
  >>>
}