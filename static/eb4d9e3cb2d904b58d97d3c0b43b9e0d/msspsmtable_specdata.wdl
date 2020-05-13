version 1.0

task MsspsmtableSpecdata {
  input {
    String iI
    String dD
    String oO
    String dbfileDbfile
    String spectraSpectraCol
    Boolean addAddBioSet
    Boolean addAddMiscLeav
  }
  command <<<
    msspsmtable specdata \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(spectraSpectraCol) then ("--spectracol " +  '"' + spectraSpectraCol + '"') else ""} \
      ~{true="--addbioset" false="" addAddBioSet} \
      ~{true="--addmiscleav" false="" addAddMiscLeav}
  >>>
}