version 1.0

task SynapseSync {
  input {
    Boolean? dry_run
    Boolean? send_messages
    Int? retries
    File tsv_file_file
    String synapse_dot
  }
  command <<<
    synapse sync \
      ~{tsv_file_file} \
      ~{synapse_dot} \
      ~{if (dry_run) then "--dryRun" else ""} \
      ~{if (send_messages) then "--sendMessages" else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0"
  }
  parameter_meta {
    dry_run: "Perform validation without uploading."
    send_messages: "Send notifications via Synapse messaging (email) at specific\\nintervals, on errors and on completion."
    retries: ""
    tsv_file_file: "A tsv file with file locations and metadata to be pushed to"
    synapse_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}