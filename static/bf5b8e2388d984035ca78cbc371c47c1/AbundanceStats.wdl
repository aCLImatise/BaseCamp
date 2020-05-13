version 1.0

task AbundanceStats {
  input {
    Boolean jaccardJaccard
    String lowerLowerCutOff
    String resultResultDir
    String rRLocation
    Boolean sorensenSorensen
    Boolean otuOtuTable
    String upperUpperCutOff
  }
  command <<<
    AbundanceStats \
      ~{true="--jaccard" false="" jaccardJaccard} \
      ~{if defined(lowerLowerCutOff) then ("--lower-cutoff " +  '"' + lowerLowerCutOff + '"') else ""} \
      ~{if defined(resultResultDir) then ("--result-dir " +  '"' + resultResultDir + '"') else ""} \
      ~{if defined(rRLocation) then ("--R-location " +  '"' + rRLocation + '"') else ""} \
      ~{true="--sorensen" false="" sorensenSorensen} \
      ~{true="--otu-table" false="" otuOtuTable} \
      ~{if defined(upperUpperCutOff) then ("--upper-cutoff " +  '"' + upperUpperCutOff + '"') else ""}
  >>>
}