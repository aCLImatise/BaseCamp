version 1.0

task GetViruses.py {
  input {
    String? output_directory_stored
    String? server
  }
  command <<<
    get_viruses.py \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    output_directory_stored: "The output directory where the chromosomes are stored. Default is '.'."
    server: "The NCBI server from where the viral genomes are downloaded. Default is 'ftp.ncbi.nlm.nih.gov'."
  }
}