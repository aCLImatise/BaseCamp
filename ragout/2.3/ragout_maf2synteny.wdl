version 1.0

task RagoutMaf2synteny {
  input {
    String? path_output_directory
    String? path_file_custom
    String? commaseparated_list_synteny
    String? m
    String maf_file
  }
  command <<<
    ragout-maf2synteny \
      ~{maf_file} \
      ~{if defined(path_output_directory) then ("-o " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(path_file_custom) then ("-s " +  '"' + path_file_custom + '"') else ""} \
      ~{if defined(commaseparated_list_synteny) then ("-b " +  '"' + commaseparated_list_synteny + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    path_output_directory: "path to the output directory [default = .]"
    path_file_custom: "path to a file with custom simplification parameters [default = not set]"
    commaseparated_list_synteny: "comma-separated list of synteny block scales [default = 5000]"
    m: ""
    maf_file: "path to maf file"
  }
}