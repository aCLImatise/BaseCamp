version 1.0

task Anvihelp {
  input {
    Boolean? requires
    Boolean? provides
    Boolean? name
    String? report
  }
  command <<<
    anvi_help \
      ~{if (requires) then "--requires" else ""} \
      ~{if (provides) then "--provides" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""}
  >>>
  parameter_meta {
    requires: "Restrict to programs that require this search term"
    provides: "Restrict to programs that provide this search term"
    name: "Restrict to programs that contain this search term in\\ntheir name"
    report: "Which information would you like to be in the report?\\nMess with this if you are disappointed with the\\ndefault. Possibles are Description, Tags, Requires,\\nProvides, Status, and Resources. Add multiple of them\\nwith commas (no whitespace). For example, if you\\nwanted Description and Resources, you would put here\\nDescription,Resources\\n"
  }
  output {
    File out_stdout = stdout()
  }
}