version 1.0

task Test.pyutilib {
  input {
    String dirDir
    Boolean allAll
    String categoryCategory
    Boolean coverageCoverage
    Boolean verboseVerbose
    String outputOutput
    String? dirsDirs
  }
  command <<<
    test.pyutilib \
      ~{dirsDirs} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}