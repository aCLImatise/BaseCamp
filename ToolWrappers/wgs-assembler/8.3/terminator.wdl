version 1.0

task Terminator {
  input {
    File? mandatory_path_gkpstore
    File? version_mandatory_path
    File? version_optional_path
    String? write_output_here
    String? use_real_uids
    String? use_uid_namespace
    String? use_uid_server
  }
  command <<<
    terminator \
      ~{if defined(mandatory_path_gkpstore) then ("-g " +  '"' + mandatory_path_gkpstore + '"') else ""} \
      ~{if defined(version_mandatory_path) then ("-t " +  '"' + version_mandatory_path + '"') else ""} \
      ~{if defined(version_optional_path) then ("-c " +  '"' + version_optional_path + '"') else ""} \
      ~{if defined(write_output_here) then ("-o " +  '"' + write_output_here + '"') else ""} \
      ~{if defined(use_real_uids) then ("-s " +  '"' + use_real_uids + '"') else ""} \
      ~{if defined(use_uid_namespace) then ("-n " +  '"' + use_uid_namespace + '"') else ""} \
      ~{if defined(use_uid_server) then ("-E " +  '"' + use_uid_server + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_gkpstore: "mandatory path to the gkpStore"
    version_mandatory_path: "version     mandatory path to the tigStore and version"
    version_optional_path: "version   optional path to a checkpoint and version"
    write_output_here: "write the output here"
    use_real_uids: "don't use real UIDs, but start counting from here"
    use_uid_namespace: "use this UID namespace"
    use_uid_server: "use this UID server"
  }
  output {
    File out_stdout = stdout()
  }
}