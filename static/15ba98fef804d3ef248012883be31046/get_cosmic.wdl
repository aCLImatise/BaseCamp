version 1.0

task GetCosmic.py {
  input {
    String? organism
    String? output_directory_stored
    String? server
    String? data
  }
  command <<<
    get_cosmic.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the known fusion genes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the known fusion genes are stored. Default is '.'."
    server: "The COSMIC server from where the known fusion genes are downloaded. Default is 'http://cancer.sanger.ac.uk'."
    data: "The input TSV.GZ file containg the data from the COSMIC database. It should be used when the COSMIC website cannot be reached. Default is 'none'."
  }
}