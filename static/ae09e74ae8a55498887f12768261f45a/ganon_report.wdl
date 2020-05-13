version 1.0

task GanonReport {
  input {
    Boolean rR
    Int minMinMatches
    Int minMinMatchesPerc
    String outputOutputReport
    String repRepFile
    Boolean dD
  }
  command <<<
    ganon report \
      ~{true="-r" false="" rR} \
      ~{if defined(minMinMatches) then ("--min-matches " +  '"' + minMinMatches + '"') else ""} \
      ~{if defined(minMinMatchesPerc) then ("--min-matches-perc " +  '"' + minMinMatchesPerc + '"') else ""} \
      ~{if defined(outputOutputReport) then ("--output-report " +  '"' + outputOutputReport + '"') else ""} \
      ~{if defined(repRepFile) then ("--rep-file " +  '"' + repRepFile + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}