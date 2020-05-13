version 1.0

task MsspeptableBuild {
  input {
    String dD
    String oO
    String dbfileDbfile
    Boolean geneGeneCentric
    Boolean nonNonCentric
    Boolean isobaricIsobaric
    Boolean precursorPrecursor
    Boolean fdrFdr
    Boolean pepPep
  }
  command <<<
    msspeptable build \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{true="--genecentric" false="" geneGeneCentric} \
      ~{true="--noncentric" false="" nonNonCentric} \
      ~{true="--isobaric" false="" isobaricIsobaric} \
      ~{true="--precursor" false="" precursorPrecursor} \
      ~{true="--fdr" false="" fdrFdr} \
      ~{true="--pep" false="" pepPep}
  >>>
}