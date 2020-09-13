version 1.0

task Biopetbamstats {
  input {
    String? log_level
    String tool_name
  }
  command <<<
    biopet_bamstats \
      ~{tool_name} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    tool_name: "Name of the tool to execute"
  }
  output {
    File out_stdout = stdout()
  }
}