version 1.0

task GcloudComputeScp {
  input {
    Int? zone
    Boolean? compress
    Boolean? dry_run
    Boolean? force_key_file_overwrite
    Boolean? plain
    String? port
    Boolean? recurse
    String? scp_flag
    File? ssh_key_file
    String? strict_host_key_checking
    String transfer_dot
  }
  command <<<
    gcloud compute scp \
      ~{transfer_dot} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force_key_file_overwrite) then "--force-key-file-overwrite" else ""} \
      ~{if (plain) then "--plain" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (recurse) then "--recurse" else ""} \
      ~{if defined(scp_flag) then ("--scp-flag " +  '"' + scp_flag + '"') else ""} \
      ~{if defined(ssh_key_file) then ("--ssh-key-file " +  '"' + ssh_key_file + '"') else ""} \
      ~{if defined(strict_host_key_checking) then ("--strict-host-key-checking " +  '"' + strict_host_key_checking + '"') else ""}
  >>>
  parameter_meta {
    zone: ""
    compress: "Enable compression."
    dry_run: "If provided, prints the command that would be run to standard out\\ninstead of executing it."
    force_key_file_overwrite: "If enabled gcloud will regenerate and overwrite the files associated\\nwith a broken SSH key without asking for confirmation in both\\ninteractive and non-interactive environment.\\nIf disabled gcloud will not attempt to regenerate the files associated\\nwith a broken SSH key and fail in both interactive and non-interactive\\nenvironment."
    plain: "Suppresses the automatic addition of ssh(1)/scp(1) flags. This flag is\\nuseful if you want to take care of authentication yourself or use\\nspecific ssh/scp features."
    port: "The port to connect to."
    recurse: "Upload directories recursively."
    scp_flag: "Extra flag to be sent to scp. This flag may be repeated."
    ssh_key_file: "The path to the SSH key file. By default, this is\\n~/.ssh/google_compute_engine."
    strict_host_key_checking: "Override the default behavior of StrictHostKeyChecking. By default,\\nStrictHostKeyChecking is set to 'no' the first time you connect to an\\ninstance and will be set to 'yes' for all subsequent connections. Use\\nthis flag to specify a value for the connection.\\nSTRICT_HOST_KEY_CHECKING must be one of: yes, no, ask."
    transfer_dot: "When the destination is local, all sources must be the same virtual machine"
  }
  output {
    File out_stdout = stdout()
  }
}