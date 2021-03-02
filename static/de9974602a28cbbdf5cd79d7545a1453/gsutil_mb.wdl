version 1.0

task GsutilMb {
  input {
    String? specifies_storage_class
    String? be_multiregional_location
    String? specifies_project_id
    String? same_as_c
  }
  command <<<
    gsutil mb \
      ~{if defined(specifies_storage_class) then ("-c " +  '"' + specifies_storage_class + '"') else ""} \
      ~{if defined(be_multiregional_location) then ("-l " +  '"' + be_multiregional_location + '"') else ""} \
      ~{if defined(specifies_project_id) then ("-p " +  '"' + specifies_project_id + '"') else ""} \
      ~{if defined(same_as_c) then ("-s " +  '"' + same_as_c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_storage_class: "Specifies the default storage class. Default is \\\"Standard\\\"."
    be_multiregional_location: "Can be any multi-regional or regional location. See\\nhttps://cloud.google.com/storage/docs/storage-classes\\nfor a discussion of this distinction. Default is US.\\nLocations are case insensitive."
    specifies_project_id: "Specifies the project ID under which to create the bucket."
    same_as_c: "Same as -c."
  }
  output {
    File out_stdout = stdout()
  }
}