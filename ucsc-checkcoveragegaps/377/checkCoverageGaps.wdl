version 1.0

task CheckCoverageGaps {
  input {
    Boolean? all_parts
    String? female
    Boolean? no_comma
    String track_n
  }
  command <<<
    checkCoverageGaps \
      ~{track_n} \
      ~{true="-allParts" false="" all_parts} \
      ~{if defined(female) then ("-female " +  '"' + female + '"') else ""} \
      ~{true="-noComma" false="" no_comma}
  >>>
  parameter_meta {
    all_parts: "If set then include _hap and _random and other wierd chroms"
    female: "set then don't check chrY"
    no_comma: "- Don't put commas in biggest gap output"
    track_n: ""
  }
}