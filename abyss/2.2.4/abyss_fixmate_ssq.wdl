version 1.0

task AbyssFixmateSsq {
  input {
    Boolean noNoQname
    Boolean qnameQname
    Boolean allAll
    Boolean diffDiff
    String minMinAlign
    String sameSame
    File histHist
    File covCov
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
  }
  command <<<
    abyss-fixmate-ssq \
      ~{true="--no-qname" false="" noNoQname} \
      ~{true="--qname" false="" qnameQname} \
      ~{true="--all" false="" allAll} \
      ~{true="--diff" false="" diffDiff} \
      ~{if defined(minMinAlign) then ("--min-align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(sameSame) then ("--same " +  '"' + sameSame + '"') else ""} \
      ~{if defined(histHist) then ("--hist " +  '"' + histHist + '"') else ""} \
      ~{if defined(covCov) then ("--cov " +  '"' + covCov + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""}
  >>>
}