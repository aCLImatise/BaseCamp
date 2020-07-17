version 1.0

task GetTrna.py {
  input {
    String? organism
    String? output_directory_where
    String? server
  }
  command <<<
    get_trna.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_where) then ("--output " +  '"' + output_directory_where + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the tRNA sequences are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_where: "The output directory where the tRNA sequences are stored. Default is '.'."
    server: "The Ensembl server from where the tRNA sequences are downloaded, e.g. 'www.ensembl.org', 'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is 'www.ensembl.org'."
  }
}