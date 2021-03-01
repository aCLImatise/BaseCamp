version 1.0

task EbiMetagenomicsDownloadRunData {
  input {
    String? run
    String? data
    String get_possible_run_data
  }
  command <<<
    ebi_metagenomics download_run_data \
      ~{get_possible_run_data} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run: "Id of a run in EBI metagenomics"
    data: "Data to download for the run (accessible with"
    get_possible_run_data: "--file PATH  File to export downloaded data"
  }
  output {
    File out_stdout = stdout()
  }
}