version 1.0

task CheckCoverageGaps {
  input {
    Boolean? all_parts
    String? female
    Boolean? no_comma
  }
  command <<<
    checkCoverageGaps \
      ~{if (all_parts) then "-allParts" else ""} \
      ~{if defined(female) then ("-female " +  '"' + female + '"') else ""} \
      ~{if (no_comma) then "-noComma" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_parts: "If set then include _hap and _random and other wierd chroms"
    female: "set then don't check chrY"
    no_comma: "- Don't put commas in biggest gap output"
  }
  output {
    File out_stdout = stdout()
  }
}