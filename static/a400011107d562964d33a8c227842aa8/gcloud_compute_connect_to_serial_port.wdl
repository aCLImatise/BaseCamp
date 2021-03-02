version 1.0

task GcloudComputeConnecttoserialport {
  input {
    Boolean? dry_run
    Int? extra_args
    Boolean? force_key_file_overwrite
    Int? port
    File? ssh_key_file
    String? zone
    String instance
  }
  command <<<
    gcloud compute connect_to_serial_port \
      ~{instance} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(extra_args) then ("--extra-args " +  '"' + extra_args + '"') else ""} \
      ~{if (force_key_file_overwrite) then "--force-key-file-overwrite" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ssh_key_file) then ("--ssh-key-file " +  '"' + ssh_key_file + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dry_run: "If provided, the ssh command is printed to standard out rather than\\nbeing executed."
    extra_args: "=VALUE,[KEY=VALUE,...]\\nOptional arguments can be passed to the serial port connection by\\npassing key-value pairs to this flag, such as max-connections=N or\\nreplay-lines=N. See\\nhttps://cloud.google.com/compute/docs/instances/interacting-with-serial-console\\nfor additional options."
    force_key_file_overwrite: "If enabled gcloud will regenerate and overwrite the files associated\\nwith a broken SSH key without asking for confirmation in both\\ninteractive and non-interactive environment.\\nIf disabled gcloud will not attempt to regenerate the files associated\\nwith a broken SSH key and fail in both interactive and non-interactive\\nenvironment."
    port: "; default=\\\"1\\\"\\nThe number of the requested serial port. Can be 1-4, default is 1.\\nInstances can support up to four serial ports. By default, this command\\nwill connect to the first serial port. Setting this flag will connect\\nto the requested serial port."
    ssh_key_file: "The path to the SSH key file. By default, this is\\n~/.ssh/google_compute_engine."
    zone: "The zone of the instance to connect to. If not specified, you may be\\nprompted to select a zone.\\nTo avoid prompting when this flag is omitted, you can set the\\ncompute/zone property:\\n$ gcloud config set compute/zone ZONE\\nA list of zones can be fetched by running:\\n$ gcloud compute zones list\\nTo unset the property, run:\\n$ gcloud config unset compute/zone\\nAlternatively, the zone can be stored in the environment variable\\nCLOUDSDK_COMPUTE_ZONE."
    instance: "SYNOPSIS"
  }
  output {
    File out_stdout = stdout()
  }
}