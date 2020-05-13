version 1.0

task PlanemoTestReports {
  input {
    File testTestOutput
    File testTestOutputText
    File testTestOutputMarkdown
    File testTestOutputXUnit
    File testTestOutputJunit
  }
  command <<<
    planemo test_reports \
      ~{if defined(testTestOutput) then ("--test_output " +  '"' + testTestOutput + '"') else ""} \
      ~{if defined(testTestOutputText) then ("--test_output_text " +  '"' + testTestOutputText + '"') else ""} \
      ~{if defined(testTestOutputMarkdown) then ("--test_output_markdown " +  '"' + testTestOutputMarkdown + '"') else ""} \
      ~{if defined(testTestOutputXUnit) then ("--test_output_xunit " +  '"' + testTestOutputXUnit + '"') else ""} \
      ~{if defined(testTestOutputJunit) then ("--test_output_junit " +  '"' + testTestOutputJunit + '"') else ""}
  >>>
}