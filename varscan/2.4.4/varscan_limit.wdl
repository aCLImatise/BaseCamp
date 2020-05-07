version 1.0

task VarscanLimit {
  input {
    File positionsPositionsFile
    File regionsRegionsFile
    String marginMarginSize
    File outputOutputFile
    File notNotFile
  }
  command <<<
    varscan limit \
      ~{if defined(positionsPositionsFile) then ("--positions-file " +  '"' + positionsPositionsFile + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(marginMarginSize) then ("--margin-size " +  '"' + marginMarginSize + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(notNotFile) then ("--not-file " +  '"' + notNotFile + '"') else ""}
  >>>
}