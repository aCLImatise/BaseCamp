version 1.0

task Test.pyomo {
  input {
    String dirDir
    String categoryCategory
    Boolean allAll
    Boolean coverageCoverage
    Boolean verboseVerbose
    String outputOutput
    String? dirsDirs
  }
  command <<<
    test.pyomo \
      ~{dirsDirs} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}