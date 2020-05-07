version 1.0

task AnviHelp {
  input {
    Boolean requiresRequires
    Boolean providesProvides
    Boolean nameName
    String reportReport
    String? searchSearchTerm
  }
  command <<<
    anvi-help \
      ~{searchSearchTerm} \
      ~{true="--requires" false="" requiresRequires} \
      ~{true="--provides" false="" providesProvides} \
      ~{true="--name" false="" nameName} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""}
  >>>
}