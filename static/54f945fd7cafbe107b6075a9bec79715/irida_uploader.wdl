version 1.0

task IridaUploader {
  input {
    Directory? directory
    String? config
    Boolean? force
    Boolean? batch
    Boolean? ci
    Boolean? cs
    Boolean? cu
    Boolean? cp
    Boolean? cb
    Boolean? cr
  }
  command <<<
    irida-uploader \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--batch" false="" batch} \
      ~{true="-ci" false="" ci} \
      ~{true="-cs" false="" cs} \
      ~{true="-cu" false="" cu} \
      ~{true="-cp" false="" cp} \
      ~{true="-cb" false="" cb} \
      ~{true="-cr" false="" cr}
  >>>
  parameter_meta {
    directory: "Location of sequencing run to upload. Directory must be writable."
    config: "Path to an alternative configuration file. This overrides the default config file in the config directory"
    force: "Uploader will ignore the status file, and try to upload even when a run is in non new status."
    batch: "Uploader will expect a directory containing a sequencing run directories, and upload in batch. The list of runs is generated at start time (Runs added to directory mid upload will not be uploaded)."
    ci: "[CONFIG_CLIENT_ID], --config_client_id [CONFIG_CLIENT_ID] Override the \"client_id\" field in config file. This is for the uploader client created in IRIDA, used to handle the data upload"
    cs: "[CONFIG_CLIENT_SECRET], --config_client_secret [CONFIG_CLIENT_SECRET] Override \"client_secret\" in config file. This is for the uploader client created in IRIDA, used to handle the data upload"
    cu: "[CONFIG_USERNAME], --config_username [CONFIG_USERNAME] Override \"username\" in config file. This is your IRIDA account username."
    cp: "[CONFIG_PASSWORD], --config_password [CONFIG_PASSWORD] Override \"password\" in config file. This corresponds to your IRIDA account."
    cb: "[CONFIG_BASE_URL], --config_base_url [CONFIG_BASE_URL] Override \"base_url\" in config file. The api url for your irida instance (example: https://my.irida.server/api/)"
    cr: "[CONFIG_PARSER], --config_parser [CONFIG_PARSER] Override \"parser\" in config file. Choose the type of sequencer data that is being uploaded. Supported parsers: ['miseq', 'miseq_v26', 'miseq_v31', 'miniseq', 'nextseq', 'iseq', 'directory']"
  }
}