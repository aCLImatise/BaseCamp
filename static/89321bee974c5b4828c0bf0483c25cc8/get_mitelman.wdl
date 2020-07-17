version 1.0

task GetMitelman.py {
  input {
    String? organism
    String? url
    String? output_directory_stored
  }
  command <<<
    get_mitelman.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the known fusion genes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    url: "The URL for Mitelman database dump file. Default is 'https://storage.cloud.google.com/mitelman-data- files/mitelman_db.zip'."
    output_directory_stored: "The output directory where the known fusion genes are stored. Default is '.'."
  }
}