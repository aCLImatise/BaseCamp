version 1.0

task SummaryGetOrganelleOutputpy {
  input {
    File? output_csv_file
    String list_of_sample_folders
  }
  command <<<
    summary_get_organelle_output_py \
      ~{list_of_sample_folders} \
      ~{if defined(output_csv_file) then ("-o " +  '"' + output_csv_file + '"') else ""}
  >>>
  parameter_meta {
    output_csv_file: "Output csv file."
    list_of_sample_folders: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_csv_file = "${in_output_csv_file}"
  }
}