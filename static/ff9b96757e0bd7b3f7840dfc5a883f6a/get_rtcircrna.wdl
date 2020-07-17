version 1.0

task GetRtcircrna.py {
  input {
    String? organism
    String? output_directory_stored
    String? data
  }
  command <<<
    get_rtcircrna.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the known fusion genes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the known fusion genes are stored. Default is '.'."
    data: "The input Excel file containg the data from the article. It should be used when there is no internet connection to the site which hosts the article."
  }
}