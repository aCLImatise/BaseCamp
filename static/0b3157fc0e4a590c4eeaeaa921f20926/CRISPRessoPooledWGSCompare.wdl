version 1.0

task CRISPRessoPooledWGSCompare {
  input {
    String? n_processes
    Boolean? save_also_png
    Boolean? debug
    String? n
    String? var_none
    String cris_presso_pooled_wgs_output_folder_one
    String cris_presso_pooled_wgs_output_folder_two
  }
  command <<<
    CRISPRessoPooledWGSCompare \
      ~{cris_presso_pooled_wgs_output_folder_one} \
      ~{cris_presso_pooled_wgs_output_folder_two} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{true="--save_also_png" false="" save_also_png} \
      ~{true="--debug" false="" debug} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(var_none) then ("-n1 " +  '"' + var_none + '"') else ""}
  >>>
  parameter_meta {
    n_processes: "Number of processes to use for CRISPResso comparison (default: 1)"
    save_also_png: "Save also .png images additionally to .pdf files (default: False)"
    debug: "Show debug messages (default: False)"
    n: ""
    var_none: ""
    cris_presso_pooled_wgs_output_folder_one: "First output folder with CRISPRessoPooled or CRISPRessoWGS analysis"
    cris_presso_pooled_wgs_output_folder_two: "Second output folder with CRISPRessoPooled or CRISPRessoWGS analysis"
  }
}