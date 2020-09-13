version 1.0

task GsutilMb {
  input {
    String? specifies_default_storage
    String? can_multiregional_regional
    String? specifies_project_id
    String? same_as_c
  }
  command <<<
    gsutil mb \
      ~{if defined(specifies_default_storage) then ("-c " +  '"' + specifies_default_storage + '"') else ""} \
      ~{if defined(can_multiregional_regional) then ("-l " +  '"' + can_multiregional_regional + '"') else ""} \
      ~{if defined(specifies_project_id) then ("-p " +  '"' + specifies_project_id + '"') else ""} \
      ~{if defined(same_as_c) then ("-s " +  '"' + same_as_c + '"') else ""}
  >>>
  parameter_meta {
    specifies_default_storage: "Specifies the default storage class. Default is \\\"Standard\\\"."
    can_multiregional_regional: "Can be any multi-regional or regional location. See\\nhttps://cloud.google.com/storage/docs/storage-classes\\nfor a discussion of this distinction. Default is US.\\nLocations are case insensitive."
    specifies_project_id: "Specifies the project ID under which to create the bucket."
    same_as_c: "Same as -c."
  }
  output {
    File out_stdout = stdout()
  }
}