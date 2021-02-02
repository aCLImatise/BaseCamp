version 1.0

task GcloudAuthActivateserviceaccount {
  input {
    File? key_file
    File? password_file
    Boolean? prompt_for_password
    String g_cloud_dot
  }
  command <<<
    gcloud auth activate_service_account \
      ~{g_cloud_dot} \
      ~{if defined(key_file) then ("--key-file " +  '"' + key_file + '"') else ""} \
      ~{if defined(password_file) then ("--password-file " +  '"' + password_file + '"') else ""} \
      ~{if (prompt_for_password) then "--prompt-for-password" else ""}
  >>>
  parameter_meta {
    key_file: "Path to the private key file."
    password_file: "Path to a file containing the password for the service account private\\nkey (only for a .p12 file)."
    prompt_for_password: "Prompt for the password for the service account private key (only for a\\n.p12 file)."
    g_cloud_dot: "The key file for this command can be obtained using either:\\no the Cloud Platform console (https://console.cloud.google.com) or\\no $ gcloud iam service-accounts keys create."
  }
  output {
    File out_stdout = stdout()
  }
}