version 1.0

task GcloudDnsRecordsets {
  input {
    String changes
    String transaction
    String export
    String import_recordsets_your
    String list
  }
  command <<<
    gcloud dns record_sets \
      ~{changes} \
      ~{transaction} \
      ~{export} \
      ~{import_recordsets_your} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    changes: "View details about changes to your Cloud DNS record-sets."
    transaction: "Make scriptable and transactional changes to your record-sets."
    export: "Export your record-sets into a file."
    import_recordsets_your: "Import record-sets into your managed-zone."
    list: "View the list of record-sets in a managed-zone."
  }
  output {
    File out_stdout = stdout()
  }
}