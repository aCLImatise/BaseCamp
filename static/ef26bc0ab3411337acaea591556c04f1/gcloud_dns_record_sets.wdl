version 1.0

task GcloudDnsRecordsets {
  input {
    File? zone_file_format
    String changes
    String transaction
    String export
    String import_recordsets_managedzone
    String list
  }
  command <<<
    gcloud dns record_sets \
      ~{changes} \
      ~{transaction} \
      ~{export} \
      ~{import_recordsets_managedzone} \
      ~{list} \
      ~{if defined(zone_file_format) then ("--zone-file-format " +  '"' + zone_file_format + '"') else ""}
  >>>
  parameter_meta {
    zone_file_format: ""
    changes: "View details about changes to your Cloud DNS record-sets."
    transaction: "Make scriptable and transactional changes to your record-sets."
    export: "Export your record-sets into a file."
    import_recordsets_managedzone: "Import record-sets into your managed-zone."
    list: "View the list of record-sets in a managed-zone."
  }
  output {
    File out_stdout = stdout()
  }
}