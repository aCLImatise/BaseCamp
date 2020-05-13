version 1.0

task Varlookup {
  input {
    Int distanceDistance
    File aAFile
    File bBFile
    String cohortCohort
    String outputOutput
  }
  command <<<
    varlookup \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(aAFile) then ("--aFile " +  '"' + aAFile + '"') else ""} \
      ~{if defined(bBFile) then ("--bFile " +  '"' + bBFile + '"') else ""} \
      ~{if defined(cohortCohort) then ("--cohort " +  '"' + cohortCohort + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}