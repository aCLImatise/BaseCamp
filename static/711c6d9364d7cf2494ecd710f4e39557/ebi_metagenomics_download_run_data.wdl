version 1.0

task EbiMetagenomicsDownloadRunData {
  input {
    String? run
    String? data
    File? file
  }
  command <<<
    ebi_metagenomics download_run_data \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    run: "Id of a run in EBI metagenomics"
    data: "Data to download for the run (accessible with get_possible_run_data"
    file: "File to export downloaded data"
  }
}