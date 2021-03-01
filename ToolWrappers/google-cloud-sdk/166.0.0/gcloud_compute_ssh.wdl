version 1.0

task GcloudComputeSsh {
  input {
    Int? instance
    String? command_run_command
    String? container
    Boolean? dry_run
    Boolean? force_key_file_overwrite
    Boolean? plain
    Float? ssh_flag
    File? ssh_key_file
    String? strict_host_key_checking
    String? zone
    String address_dot
  }
  command <<<
    gcloud compute ssh \
      ~{address_dot} \
      ~{if defined(instance) then ("-L " +  '"' + instance + '"') else ""} \
      ~{if defined(command_run_command) then ("--command " +  '"' + command_run_command + '"') else ""} \
      ~{if defined(container) then ("--container " +  '"' + container + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force_key_file_overwrite) then "--force-key-file-overwrite" else ""} \
      ~{if (plain) then "--plain" else ""} \
      ~{if defined(ssh_flag) then ("--ssh-flag " +  '"' + ssh_flag + '"') else ""} \
      ~{if defined(ssh_key_file) then ("--ssh-key-file " +  '"' + ssh_key_file + '"') else ""} \
      ~{if defined(strict_host_key_checking) then ("--strict-host-key-checking " +  '"' + strict_host_key_checking + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    instance: ":%INSTANCE%:80"
    command_run_command: "A command to run on the virtual machine.\\nRuns the command on the target instance and then exits."
    container: "The name or ID of a container inside of the virtual machine instance to\\nconnect to. This only applies to virtual machines that are using a\\nGoogle Container-Optimized virtual machine image. For more information,\\nsee https://cloud.google.com/compute/docs/containers"
    dry_run: "If provided, prints the command that would be run to standard out\\ninstead of executing it."
    force_key_file_overwrite: "If enabled gcloud will regenerate and overwrite the files associated\\nwith a broken SSH key without asking for confirmation in both\\ninteractive and non-interactive environment.\\nIf disabled gcloud will not attempt to regenerate the files associated\\nwith a broken SSH key and fail in both interactive and non-interactive\\nenvironment."
    plain: "Suppresses the automatic addition of ssh(1)/scp(1) flags. This flag is\\nuseful if you want to take care of authentication yourself or use\\nspecific ssh/scp features."
    ssh_flag: "Additional flags to be passed to ssh(1). It is recommended that flags\\nbe passed using an assignment operator and quotes. This flag will\\nreplace occurences of %USER% and %INSTANCE% with their dereferenced\\nvalues. Example:\\n$ gcloud compute ssh example-instance --zone us-central1-a \\\\n--ssh-flag=\\\"-vvv\\\" --ssh-flag=\\\"-L 80:%INSTANCE%:80\\\"\\nis equivalent to passing the flags --vvv and -L 80:162.222.181.197:80\\nto ssh(1) if the external IP address of 'example-instance' is\\n162.222.181.197."
    ssh_key_file: "The path to the SSH key file. By default, this is\\n~/.ssh/google_compute_engine."
    strict_host_key_checking: "Override the default behavior of StrictHostKeyChecking. By default,\\nStrictHostKeyChecking is set to 'no' the first time you connect to an\\ninstance and will be set to 'yes' for all subsequent connections. Use\\nthis flag to specify a value for the connection.\\nSTRICT_HOST_KEY_CHECKING must be one of: yes, no, ask."
    zone: "The zone of the instance to connect to. If not specified, you may be\\nprompted to select a zone.\\nTo avoid prompting when this flag is omitted, you can set the\\ncompute/zone property:\\n$ gcloud config set compute/zone ZONE\\nA list of zones can be fetched by running:\\n$ gcloud compute zones list\\nTo unset the property, run:\\n$ gcloud config unset compute/zone\\nAlternatively, the zone can be stored in the environment variable\\nCLOUDSDK_COMPUTE_ZONE."
    address_dot: "This command ensures that the user's public SSH key is present in the"
  }
  output {
    File out_stdout = stdout()
  }
}