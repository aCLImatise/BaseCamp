version 1.0

task Iridauploader {
  input {
    Directory? directory
    File? config
    Boolean? force
    Boolean? continue_partial
    Boolean? batch
    Int? upload_mode
    Boolean? ci
    Boolean? cs
    Boolean? cu
    Boolean? cp
    Boolean? cb
    Boolean? cr
    Boolean? readonly
    Boolean? cd
    Boolean? ct
  }
  command <<<
    irida_uploader \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (continue_partial) then "--continue_partial" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if defined(upload_mode) then ("--upload_mode " +  '"' + upload_mode + '"') else ""} \
      ~{if (ci) then "-ci" else ""} \
      ~{if (cs) then "-cs" else ""} \
      ~{if (cu) then "-cu" else ""} \
      ~{if (cp) then "-cp" else ""} \
      ~{if (cb) then "-cb" else ""} \
      ~{if (cr) then "-cr" else ""} \
      ~{if (readonly) then "--readonly" else ""} \
      ~{if (cd) then "-cd" else ""} \
      ~{if (ct) then "-ct" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/irida-uploader:0.6.0--py36_0"
  }
  parameter_meta {
    directory: "Location of sequencing run to upload.\\nDirectory must be writable."
    config: "Path to an alternative configuration file. This\\noverrides the default config file in the config\\ndirectory"
    force: "Uploader will ignore the status file, and try to\\nupload even when a run is in non new status."
    continue_partial: "Uploader will continue an existing upload run when\\nupload status is partial."
    batch: "Uploader will expect a directory containing a\\nsequencing run directories, and upload in batch. The\\nlist of runs is generated at start time (Runs added to\\ndirectory mid upload will not be uploaded)."
    upload_mode: "Choose which upload mode to use. Supported modes:\\n['default', 'assemblies', 'fast5']"
    ci: "[CONFIG_CLIENT_ID], --config_client_id [CONFIG_CLIENT_ID]\\nOverride the \\\"client_id\\\" field in config file. This is\\nfor the uploader client created in IRIDA, used to\\nhandle the data upload"
    cs: "[CONFIG_CLIENT_SECRET], --config_client_secret [CONFIG_CLIENT_SECRET]\\nOverride \\\"client_secret\\\" in config file. This is for\\nthe uploader client created in IRIDA, used to handle\\nthe data upload"
    cu: "[CONFIG_USERNAME], --config_username [CONFIG_USERNAME]\\nOverride \\\"username\\\" in config file. This is your IRIDA\\naccount username."
    cp: "[CONFIG_PASSWORD], --config_password [CONFIG_PASSWORD]\\nOverride \\\"password\\\" in config file. This corresponds\\nto your IRIDA account."
    cb: "[CONFIG_BASE_URL], --config_base_url [CONFIG_BASE_URL]\\nOverride \\\"base_url\\\" in config file. The api url for\\nyour irida instance (example:\\nhttps://my.irida.server/api/)"
    cr: "[CONFIG_PARSER], --config_parser [CONFIG_PARSER]\\nOverride \\\"parser\\\" in config file. Choose the type of\\nsequencer data that is being uploaded. Supported\\nparsers: ['miseq', 'miseq_v26', 'miseq_v31',\\n'miniseq', 'nextseq', 'nextseq2k_nml', 'iseq',\\n'directory', 'nanopore_assemblies']"
    readonly: "Upload in Read Only mode, does not write status or log\\nfile to run directory."
    cd: "[DELAY], --delay [DELAY]\\nAccepts an Integer for minutes to delay. When set, new\\nruns will have their status set to delayed. When\\nuploading a run with the delayed status, the run will\\nonly upload if the given amount of minutes has passes\\nsince it was set to delayed. Default = 0: When set to\\n0, runs will not be given delayed status."
    ct: "[CONFIG_TIMEOUT], --config_timeout [CONFIG_TIMEOUT]\\nAccepts an Integer for the expected transfer time in\\nseconds per MB. Default is 10 second for every MB of\\ndata to transfer (100kb/s). Increasing this number can\\nreduce timeout errors when your transfer speed is very\\nslow."
  }
  output {
    File out_stdout = stdout()
  }
}