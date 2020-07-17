version 1.0

task AnviHelp {
  input {
    Boolean? requires
    Boolean? provides
    Boolean? name
    String? report
    String search_term
  }
  command <<<
    anvi-help \
      ~{search_term} \
      ~{true="--requires" false="" requires} \
      ~{true="--provides" false="" provides} \
      ~{true="--name" false="" name} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""}
  >>>
  parameter_meta {
    requires: "Restrict to programs that require this search term"
    provides: "Restrict to programs that provide this search term"
    name: "Restrict to programs that contain this search term in their name"
    report: "Which information would you like to be in the report? Mess with this if you are disappointed with the default. Possibles are Description, Tags, Requires, Provides, Status, and Resources. Add multiple of them with commas (no whitespace). For example, if you wanted Description and Resources, you would put here Description,Resources"
    search_term: "Find programs associated with this search term. if you want all programs, use 'ALL'"
  }
}