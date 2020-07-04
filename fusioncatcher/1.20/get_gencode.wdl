version 1.0

task GetGencode.py {
  input {
    String? organism
    String? output_directory_stored
    String? server
  }
  command <<<
    get_gencode.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the chromosomes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the chromosomes are stored. Default is '.'."
    server: "The Gencode server from where the gene annotations are downloaded. Default is 'ftp.ebi.ac.uk'."
  }
}