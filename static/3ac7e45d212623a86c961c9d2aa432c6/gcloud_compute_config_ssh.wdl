version 1.0

task GcloudComputeConfigssh {
  input {
    File? dry_run
    Boolean? force_key_file_overwrite
    Boolean? remove
    File? ssh_config_file
    File? ssh_key_file
  }
  command <<<
    gcloud compute config_ssh \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force_key_file_overwrite) then "--force-key-file-overwrite" else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if defined(ssh_config_file) then ("--ssh-config-file " +  '"' + ssh_config_file + '"') else ""} \
      ~{if defined(ssh_key_file) then ("--ssh-key-file " +  '"' + ssh_key_file + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "If provided, the proposed changes to the SSH config file are printed to\\nstandard output and no actual changes are made."
    force_key_file_overwrite: "If enabled gcloud will regenerate and overwrite the files associated\\nwith a broken SSH key without asking for confirmation in both\\ninteractive and non-interactive environment.\\nIf disabled gcloud will not attempt to regenerate the files associated\\nwith a broken SSH key and fail in both interactive and non-interactive\\nenvironment."
    remove: "If provided, any changes made to the SSH config file by this tool are\\nreverted."
    ssh_config_file: "Specifies an alternative per-user SSH configuration file. By default,\\nthis is ~/.ssh/config."
    ssh_key_file: "The path to the SSH key file. By default, this is\\n~/.ssh/google_compute_engine."
  }
  output {
    File out_stdout = stdout()
    File out_dry_run = "${in_dry_run}"
  }
}