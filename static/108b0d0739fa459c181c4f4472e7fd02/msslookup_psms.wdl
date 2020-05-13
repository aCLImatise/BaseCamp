version 1.0

task MsslookupPsms {
  input {
    String iI
    String dbfileDbfile
    String spectraSpectraCol
    String mapMap
    Boolean decoyDecoy
    String fastFastA
    Boolean unrollUnroll
    String geneGeneField
    String fastFastADelim
  }
  command <<<
    msslookup psms \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(spectraSpectraCol) then ("--spectracol " +  '"' + spectraSpectraCol + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{true="--decoy" false="" decoyDecoy} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--unroll" false="" unrollUnroll} \
      ~{if defined(geneGeneField) then ("--genefield " +  '"' + geneGeneField + '"') else ""} \
      ~{if defined(fastFastADelim) then ("--fastadelim " +  '"' + fastFastADelim + '"') else ""}
  >>>
}