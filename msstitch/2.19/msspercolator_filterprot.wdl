version 1.0

task MsspercolatorFilterprot {
  input {
    String iI
    String dD
    String oO
    Boolean deDeAmiDate
    String fastFastA
    Int minMinLen
    String dbfileDbfile
    Boolean enforceEnforceTryptic
  }
  command <<<
    msspercolator filterprot \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--deamidate" false="" deDeAmiDate} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{true="--enforce-tryptic" false="" enforceEnforceTryptic}
  >>>
}