version 1.0

task PvacseqDownloadExampleData {
  input {
    String destination_directory
  }
  command <<<
    pvacseq download_example_data \
      ~{destination_directory}
  >>>
  parameter_meta {
    destination_directory: "Directory for downloading example data"
  }
  output {
    File out_stdout = stdout()
  }
}