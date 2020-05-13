version 1.0

task CheckCoverageGaps {
  input {
    Boolean allAllParts
    String femaleFemale
    Boolean noNoComma
    String? databaseDatabase
    String? trackTrackN
  }
  command <<<
    checkCoverageGaps \
      ~{databaseDatabase} \
      ~{true="-allParts" false="" allAllParts} \
      ~{if defined(femaleFemale) then ("-female " +  '"' + femaleFemale + '"') else ""} \
      ~{true="-noComma" false="" noNoComma} \
      ~{trackTrackN}
  >>>
}