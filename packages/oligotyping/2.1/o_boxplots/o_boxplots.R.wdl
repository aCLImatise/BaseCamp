version 1.0

task OboxplotsR {
  input {
    File? mapping_var
    Directory? output_directory
    String? remove_outliers
    Int? pdf_height
    String this_script_do_tr
    String input_matrix
    String sample_mapping
  }
  command <<<
    o_boxplots_R \
      ~{this_script_do_tr} \
      ~{input_matrix} \
      ~{sample_mapping} \
      ~{if defined(mapping_var) then ("--mapping_var " +  '"' + mapping_var + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(remove_outliers) then ("--remove_outliers " +  '"' + remove_outliers + '"') else ""} \
      ~{if defined(pdf_height) then ("--pdf_height " +  '"' + pdf_height + '"') else ""}
  >>>
  parameter_meta {
    mapping_var: "Mapping variable to use from the sample mapping file. If none specified, the first column is used."
    output_directory: "Output directory to store images [default \\\".\\\"]"
    remove_outliers: "Remove upper outliers for better scaling [default \\\"FALSE\\\"]"
    pdf_height: "PDF output height [default \\\"9\\\"]"
    this_script_do_tr: ""
    input_matrix: ""
    sample_mapping: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}