version 1.0

task MssprottableBuild {
  input {
    String dD
    String oO
    String dbfileDbfile
    String geneGeneCentric
    Boolean isobaricIsobaric
    Boolean precursorPrecursor
    Boolean probabilityProbability
    Boolean fdrFdr
    Boolean pepPep
    String mergeMergeCutOff
  }
  command <<<
    mssprottable build \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(geneGeneCentric) then ("--genecentric " +  '"' + geneGeneCentric + '"') else ""} \
      ~{true="--isobaric" false="" isobaricIsobaric} \
      ~{true="--precursor" false="" precursorPrecursor} \
      ~{true="--probability" false="" probabilityProbability} \
      ~{true="--fdr" false="" fdrFdr} \
      ~{true="--pep" false="" pepPep} \
      ~{if defined(mergeMergeCutOff) then ("--mergecutoff " +  '"' + mergeMergeCutOff + '"') else ""}
  >>>
}