version 1.0

task SummaryGetOrganelleOutputpyOutput {
  input {
    File? o
    String summary_get_organelle_output_do_tpy
    String list_of_folders
  }
  command <<<
    summary_get_organelle_output_py output \
      ~{summary_get_organelle_output_do_tpy} \
      ~{list_of_folders} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    o: ""
    summary_get_organelle_output_do_tpy: ""
    list_of_folders: ""
  }
  output {
    File out_stdout = stdout()
  }
}