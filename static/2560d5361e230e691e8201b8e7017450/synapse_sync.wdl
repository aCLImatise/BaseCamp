version 1.0

task SynapseSync {
  input {
    Boolean? dry_run
    Boolean? send_messages
    Int? retries
    File file
    String synapse_dot
  }
  command <<<
    synapse sync \
      ~{file} \
      ~{synapse_dot} \
      ~{if (dry_run) then "--dryRun" else ""} \
      ~{if (send_messages) then "--sendMessages" else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "Perform validation without uploading."
    send_messages: "Send notifications via Synapse messaging (email) at specific\\nintervals, on errors and on completion."
    retries: ""
    file: "A tsv file with file locations and metadata to be pushed to"
    synapse_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}