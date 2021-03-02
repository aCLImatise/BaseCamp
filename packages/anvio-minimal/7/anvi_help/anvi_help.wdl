version 1.0

task Anvihelp {
  input {
    Boolean? requires
    Boolean? provides
    Boolean? name
    String? report
    String search_term
  }
  command <<<
    anvi_help \
      ~{search_term} \
      ~{if (requires) then "--requires" else ""} \
      ~{if (provides) then "--provides" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    requires: "Restrict to programs that require this search term\\n(default: False)"
    provides: "Restrict to programs that provide this search term\\n(default: False)"
    name: "Restrict to programs that contain this search term in\\ntheir name (default: False)"
    report: "Which information would you like to be in the report?\\nMess with this if you are disappointed with the\\ndefault. Possibles are Description, Tags, Requires,\\nProvides, Status, and Resources. Add multiple of them\\nwith commas (no whitespace). For example, if you\\nwanted Description and Resources, you would put here\\nDescription,Resources (default: None)"
    search_term: "Find programs associated with this search term\\n(optional) (default: ALL)"
  }
  output {
    File out_stdout = stdout()
  }
}