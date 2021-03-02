version 1.0

task RefgenieInit {
  input {
    File? genome_config
    Array[String] genome_server
    Directory? genome_folder
    Directory? genome_archive_folder
    File? genome_archive_config
    String? remote_url_base
    File? settings_json
  }
  command <<<
    refgenie init \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if defined(genome_server) then ("--genome-server " +  '"' + genome_server + '"') else ""} \
      ~{if defined(genome_folder) then ("--genome-folder " +  '"' + genome_folder + '"') else ""} \
      ~{if defined(genome_archive_folder) then ("--genome-archive-folder " +  '"' + genome_archive_folder + '"') else ""} \
      ~{if defined(genome_archive_config) then ("--genome-archive-config " +  '"' + genome_archive_config + '"') else ""} \
      ~{if defined(remote_url_base) then ("--remote-url-base " +  '"' + remote_url_base + '"') else ""} \
      ~{if defined(settings_json) then ("--settings-json " +  '"' + settings_json + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.9.3--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    genome_server: "URL(s) to use for the genome_servers attribute in\\nconfig file. Default: http://refgenomes.databio.org."
    genome_folder: "Absolute path to parent folder refgenie-managed\\nassets."
    genome_archive_folder: "Absolute path to parent archive folder refgenie-\\nmanaged assets; used by refgenieserver."
    genome_archive_config: "Absolute path to desired archive config file; used by\\nrefgenieserver."
    remote_url_base: "URL to use as an alternative, remote archive location;\\nused by refgenieserver."
    settings_json: "Absolute path to a JSON file with the key value pairs\\nto inialize the configuration file with. Overwritten\\nby itemized specifications.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}