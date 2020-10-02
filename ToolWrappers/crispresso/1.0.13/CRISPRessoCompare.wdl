version 1.0

task CRISPRessoCompare {
  input {
    String? comparison
    Boolean? save_also_png
    Int? var_none
    String? n
    Int cris_presso_output_folder_one
    Int cris_presso_output_folder_two
  }
  command <<<
    CRISPRessoCompare \
      ~{cris_presso_output_folder_one} \
      ~{cris_presso_output_folder_two} \
      ~{if defined(comparison) then ("-Comparison " +  '"' + comparison + '"') else ""} \
      ~{if (save_also_png) then "--save_also_png" else ""} \
      ~{if defined(var_none) then ("-n1 " +  '"' + var_none + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    comparison: "two CRISPResso analysis-\\n)                                                )"
    save_also_png: "Save also .png images additionally to .pdf files"
    var_none: ""
    n: ""
    cris_presso_output_folder_one: "First output folder with CRISPResso analysis"
    cris_presso_output_folder_two: "Second output folder with CRISPResso analysis"
  }
  output {
    File out_stdout = stdout()
  }
}