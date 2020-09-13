version 1.0

task Humann2Databases {
  input {
    Boolean? available
    String? download
    String? update_config
  }
  command <<<
    humann2_databases \
      ~{if (available) then "--available" else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if defined(update_config) then ("--update-config " +  '"' + update_config + '"') else ""}
  >>>
  parameter_meta {
    available: "print the available databases"
    download: "<build> <install_location>\\ndownload the selected database to the install location"
    update_config: "update the config file to set the new database as the default [DEFAULT: yes]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}