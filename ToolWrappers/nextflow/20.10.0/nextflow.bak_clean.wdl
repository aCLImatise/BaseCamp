version 1.0

task NextflowbakClean {
  input {
    Boolean? after
    Boolean? before
    Boolean? but
    Boolean? dry_run
    Boolean? force
    Boolean? keep_logs
    Boolean? quiet
    String clean
  }
  command <<<
    nextflow_bak clean \
      ~{clean} \
      ~{if (after) then "-after" else ""} \
      ~{if (before) then "-before" else ""} \
      ~{if (but) then "-but" else ""} \
      ~{if (dry_run) then "-dry-run" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (keep_logs) then "-keep-logs" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextflow:20.10.0--hecda079_0"
  }
  parameter_meta {
    after: "Clean up runs executed after the specified one"
    before: "Clean up runs executed before the specified one"
    but: "Clean up all runs except the specified one"
    dry_run: "Print names of file to be removed without deleting them\\nDefault: false"
    force: "Force clean command\\nDefault: false"
    keep_logs: "Removes only temporary files but retains execution log entries and\\nmetadata\\nDefault: false"
    quiet: "Do not print names of files removed\\nDefault: false\\n"
    clean: ""
  }
  output {
    File out_stdout = stdout()
  }
}