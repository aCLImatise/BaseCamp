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
    zone_file_format: "To export record-sets in yaml format, run:\\n$ gcloud dns record-sets export --zone MANAGED_ZONE\\nTo see how to make scriptable changes to your record-sets through\\ntransactions, run:\\n$ gcloud dns record-sets transaction --zone MANAGED_ZONE\\nTo see change details or list of all changes, run:\\n$ gcloud dns record-sets changes --zone MANAGED_ZONE\\nTo see the list of all record-sets, run:\\n$ gcloud dns record-sets list --zone MANAGED_ZONE\\n"
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