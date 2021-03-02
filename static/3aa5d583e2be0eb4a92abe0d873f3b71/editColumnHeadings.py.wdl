version 1.0

task EditColumnHeadingspy {
  input {
    File? file_location_text
    String? columns_keep_order
    String? column_names_renaming
    File? name_output_file
    String output_file
  }
  command <<<
    editColumnHeadings_py \
      ~{output_file} \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(columns_keep_order) then ("-c " +  '"' + columns_keep_order + '"') else ""} \
      ~{if defined(column_names_renaming) then ("-n " +  '"' + column_names_renaming + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_location_text: "File location for the text file."
    columns_keep_order: "Columns to keep in the order to keep them in."
    column_names_renaming: "Column names if renaming."
    name_output_file: "Name of the output file."
    output_file: "Cut, rearrange and rename columns in a tab-separated file."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}