version 1.0

task GetHla2.py {
  input {
    String? organism
    String? output_directory_stored
    String? server
  }
  command <<<
    get_hla2.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the HLA sequences. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the HLA sequences are stored. Default is '.'."
    server: "The Ensembl server from where the HLA sequences are downloaded, e.g. 'www.ensembl.org', 'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is 'www.ensembl.org'."
  }
}