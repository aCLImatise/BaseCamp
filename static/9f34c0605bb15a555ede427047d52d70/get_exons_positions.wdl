version 1.0

task GetExonsPositions.py {
  input {
    String? organism
    String? output_directory_stored
    String? threshold_length
    String? server
  }
  command <<<
    get_exons_positions.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(threshold_length) then ("--threshold_length " +  '"' + threshold_length + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the exons positions are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the exons positions are stored. Default is '.'."
    threshold_length: "Genes shorter than this will be skipped and they will not be in the output. Default is '150'."
    server: "The Ensembl server from where the exons positions are downloaded, e.g. 'www.ensembl.org', 'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is 'www.ensembl.org'."
  }
}