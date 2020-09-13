version 1.0

task CRISPRessoCompare {
  input {
    String? comparison
    String? name
    Int? sample_one_name
    Int? sample_two_name
    Directory? output_folder
    Boolean? save_also_png
    Int cris_presso_output_folder_one
    Int cris_presso_output_folder_two
  }
  command <<<
    CRISPRessoCompare \
      ~{cris_presso_output_folder_one} \
      ~{cris_presso_output_folder_two} \
      ~{if defined(comparison) then ("-Comparison " +  '"' + comparison + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(sample_one_name) then ("--sample_1_name " +  '"' + sample_one_name + '"') else ""} \
      ~{if defined(sample_two_name) then ("--sample_2_name " +  '"' + sample_two_name + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if (save_also_png) then "--save_also_png" else ""}
  >>>
  parameter_meta {
    comparison: "two CRISPResso analysis-\\n)                                                )"
    name: "Output name (default: )"
    sample_one_name: "Sample 1 name (default: Sample_1)"
    sample_two_name: "Sample 2 name (default: Sample_2)"
    output_folder: ""
    save_also_png: "Save also .png images additionally to .pdf files\\n(default: False)\\n"
    cris_presso_output_folder_one: "First output folder with CRISPResso analysis"
    cris_presso_output_folder_two: "Second output folder with CRISPResso analysis"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}