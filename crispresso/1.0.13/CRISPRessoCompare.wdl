version 1.0

task CRISPRessoCompare {
  input {
    Boolean? save_also_png
    String? n
    String? var_none
    String cris_presso_output_folder_one
    String cris_presso_output_folder_two
  }
  command <<<
    CRISPRessoCompare \
      ~{cris_presso_output_folder_one} \
      ~{cris_presso_output_folder_two} \
      ~{true="--save_also_png" false="" save_also_png} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(var_none) then ("-n1 " +  '"' + var_none + '"') else ""}
  >>>
  parameter_meta {
    save_also_png: "Save also .png images additionally to .pdf files (default: False)"
    n: ""
    var_none: ""
    cris_presso_output_folder_one: "First output folder with CRISPResso analysis"
    cris_presso_output_folder_two: "Second output folder with CRISPResso analysis"
  }
}