version 1.0

task GetSynonyms.py {
  input {
    String? organism
    String? output_directory_stored
    String? server_path
    String? server
  }
  command <<<
    get_synonyms.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server_path) then ("--server-path " +  '"' + server_path + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the chromosomes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the chromosomes are stored. Default is '.'."
    server_path: "The path of Ensembl server from where the data is downloaded. Default is '/pub/current_mysql/'."
    server: "The Ensembl server from where the chromosomes are downloaded. Default is 'ftp.ensembl.org'."
  }
}