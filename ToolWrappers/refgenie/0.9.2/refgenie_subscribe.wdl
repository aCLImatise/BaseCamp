version 1.0

task RefgenieSubscribe {
  input {
    File? genome_config
    Boolean? reset
    Array[String] genome_server
  }
  command <<<
    refgenie subscribe \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if defined(genome_server) then ("--genome-server " +  '"' + genome_server + '"') else ""}
  >>>
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    reset: "Overwrite the current list of server URLs."
    genome_server: "One or more URLs to add to the genome_servers\\nattribute in config file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}