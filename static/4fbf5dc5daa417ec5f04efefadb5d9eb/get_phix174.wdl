version 1.0

task GetPhix174.py {
  input {
    String? output_directory_stored
    String? server
  }
  command <<<
    get_phix174.py \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    output_directory_stored: "The output directory where the chromosomes are stored. Default is '.'."
    server: "The NCBI server from where the genomes of 'Enterobacteria phage phiX174' is downloaded. Default is 'ftp.ncbi.nlm.nih.gov'."
  }
}