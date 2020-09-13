version 1.0

task Iridauploader {
  input {
    Directory? directory
    File? config
    Boolean? force
    Boolean? batch
    Boolean? assemblies
    Boolean? cs
    Boolean? cu
    Boolean? cp
    Boolean? cb
    Boolean? cr
    String files_dot
  }
  command <<<
    irida_uploader \
      ~{files_dot} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (assemblies) then "--assemblies" else ""} \
      ~{if (cs) then "-cs" else ""} \
      ~{if (cu) then "-cu" else ""} \
      ~{if (cp) then "-cp" else ""} \
      ~{if (cb) then "-cb" else ""} \
      ~{if (cr) then "-cr" else ""}
  >>>
  parameter_meta {
    directory: "Location of sequencing run to upload.\\nDirectory must be writable."
    config: "Path to an alternative configuration file. This\\noverrides the default config file in the config\\ndirectory"
    force: "Uploader will ignore the status file, and try to\\nupload even when a run is in non new status."
    batch: "Uploader will expect a directory containing a\\nsequencing run directories, and upload in batch. The\\nlist of runs is generated at start time (Runs added to\\ndirectory mid upload will not be uploaded)."
    assemblies: "Upload files as assemblies instead of regular sequence"
    cs: "[CONFIG_CLIENT_SECRET], --config_client_secret [CONFIG_CLIENT_SECRET]\\nOverride \\\"client_secret\\\" in config file. This is for\\nthe uploader client created in IRIDA, used to handle\\nthe data upload"
    cu: "[CONFIG_USERNAME], --config_username [CONFIG_USERNAME]\\nOverride \\\"username\\\" in config file. This is your IRIDA\\naccount username."
    cp: "[CONFIG_PASSWORD], --config_password [CONFIG_PASSWORD]\\nOverride \\\"password\\\" in config file. This corresponds\\nto your IRIDA account."
    cb: "[CONFIG_BASE_URL], --config_base_url [CONFIG_BASE_URL]\\nOverride \\\"base_url\\\" in config file. The api url for\\nyour irida instance (example:\\nhttps://my.irida.server/api/)"
    cr: "[CONFIG_PARSER], --config_parser [CONFIG_PARSER]\\nOverride \\\"parser\\\" in config file. Choose the type of\\nsequencer data that is being uploaded. Supported\\nparsers: ['miseq', 'miseq_v26', 'miseq_v31',\\n'miniseq', 'nextseq', 'iseq', 'directory']"
    files_dot: "-ci [CONFIG_CLIENT_ID], --config_client_id [CONFIG_CLIENT_ID]"
  }
  output {
    File out_stdout = stdout()
  }
}