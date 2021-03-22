version 1.0

task RefgenieInit {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Directory? genome_folder
    Directory? genome_archive_folder
    File? genome_archive_config
    String? remote_url_base
    File? settings_json
    Array[String] s
  }
  command <<<
    refgenie init \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome_folder) then ("--genome-folder " +  '"' + genome_folder + '"') else ""} \
      ~{if defined(genome_archive_folder) then ("--genome-archive-folder " +  '"' + genome_archive_folder + '"') else ""} \
      ~{if defined(genome_archive_config) then ("--genome-archive-config " +  '"' + genome_archive_config + '"') else ""} \
      ~{if defined(remote_url_base) then ("--remote-url-base " +  '"' + remote_url_base + '"') else ""} \
      ~{if defined(settings_json) then ("--settings-json " +  '"' + settings_json + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional\\nif REFGENIE environment variable is set."
    skip_read_lock: "Whether the config file should not be locked for"
    genome_folder: "Absolute path to parent folder refgenie-managed\\nassets."
    genome_archive_folder: "Absolute path to parent archive folder refgenie-\\nmanaged assets; used by refgenieserver."
    genome_archive_config: "Absolute path to desired archive config file; used\\nby refgenieserver."
    remote_url_base: "URL to use as an alternative, remote archive\\nlocation; used by refgenieserver."
    settings_json: "Absolute path to a JSON file with the key value\\npairs to inialize the configuration file with.\\nOverwritten by itemized specifications.\\n"
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}