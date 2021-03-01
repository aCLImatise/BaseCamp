version 1.0

task RepairRunSummaryrb {
  input {
    File? base_name
    String? raw_type
    String? om_ssa_it_ol
    Int file_one_dot_pep_xml
  }
  command <<<
    repair_run_summary_rb \
      ~{file_one_dot_pep_xml} \
      ~{if defined(base_name) then ("--base-name " +  '"' + base_name + '"') else ""} \
      ~{if defined(raw_type) then ("--raw-type " +  '"' + raw_type + '"') else ""} \
      ~{if defined(om_ssa_it_ol) then ("--omssa-itol " +  '"' + om_ssa_it_ol + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_name: "Original MSMS spectrum file used for search"
    raw_type: "Raw data type used for search"
    om_ssa_it_ol: "Add a fragment ion tolerance parameter to the omssa search summary"
    file_one_dot_pep_xml: ""
  }
  output {
    File out_stdout = stdout()
  }
}