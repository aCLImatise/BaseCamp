version 1.0

task VarlociraptorCallVariants {
  input {
    String outputOutput
    String testTestCaseLocus
    String testTestCasePrefix
  }
  command <<<
    varlociraptor call variants \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(testTestCaseLocus) then ("--testcase-locus " +  '"' + testTestCaseLocus + '"') else ""} \
      ~{if defined(testTestCasePrefix) then ("--testcase-prefix " +  '"' + testTestCasePrefix + '"') else ""}
  >>>
}