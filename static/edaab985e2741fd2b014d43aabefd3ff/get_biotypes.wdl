version 1.0

task GetBiotypes.py {
  input {
    String? organism
    String? output_directory_stored
    String? server
    String? server_path
  }
  command <<<
    get_biotypes.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(server_path) then ("--server-path " +  '"' + server_path + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the genes biotypes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the genes biotypes are stored. Default is '.'."
    server: "The Ensembl server from where the genes biotypes are downloaded, e.g. 'www.ensembl.org', 'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is 'www.ensembl.org'."
    server_path: "The path of Ensembl server from where the data is downloaded. Default is '/biomart/martservice'."
  }
}