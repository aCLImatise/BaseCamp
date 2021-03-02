version 1.0

task RefgenieUnsubscribe {
  input {
    File? genome_config
    Array[String] genome_server
  }
  command <<<
    refgenie unsubscribe \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if defined(genome_server) then ("--genome-server " +  '"' + genome_server + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    genome_server: "One or more URLs to remove from the genome_servers\\nattribute in config file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}