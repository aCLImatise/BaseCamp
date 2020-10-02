version 1.0

task SynapseSync {
  input {
    Int? retries
    Boolean? send_messages
    Boolean? dry_run
    File file
  }
  command <<<
    synapse sync \
      ~{file} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if (send_messages) then "--sendMessages" else ""} \
      ~{if (dry_run) then "--dryRun" else ""}
  >>>
  parameter_meta {
    retries: ""
    send_messages: ""
    dry_run: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}