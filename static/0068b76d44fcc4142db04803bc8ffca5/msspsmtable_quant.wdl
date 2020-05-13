version 1.0

task MsspsmtableQuant {
  input {
    String dbfileDbfile
    String iI
    String dD
    String oO
    String dbfileDbfile
    Boolean precursorPrecursor
    Boolean isobaricIsobaric
  }
  command <<<
    msspsmtable quant \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{true="--precursor" false="" precursorPrecursor} \
      ~{true="--isobaric" false="" isobaricIsobaric}
  >>>
}