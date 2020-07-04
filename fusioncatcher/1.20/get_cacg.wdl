version 1.0

task GetCacg.py {
  input {
    String? organism
    String? output_directory_stored
    String? server
  }
  command <<<
    get_cacg.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the known fusion genes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the known fusion genes are stored. Default is '.'."
    server: "The CACG server from where the known conjoined genes are downloaded. Default is 'http://cgc.kribb.re.kr'."
  }
}