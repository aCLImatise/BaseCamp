version 1.0

task FCStxtMergeDownsamplepy {
  input {
    File? file_location_text
    File? name_output_file
    File? specify_column_keep
    File? how_much_keep
    String fcs_txt_merge
  }
  command <<<
    FCStxtMergeDownsample_py \
      ~{fcs_txt_merge} \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(specify_column_keep) then ("-c " +  '"' + specify_column_keep + '"') else ""} \
      ~{if defined(how_much_keep) then ("-d " +  '"' + how_much_keep + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_location_text: "File location for the text files."
    name_output_file: "Name of the output file."
    specify_column_keep: "Specify which column to keep in output file"
    how_much_keep: "How much of each file to keep\\n"
    fcs_txt_merge: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_specify_column_keep = "${in_specify_column_keep}"
  }
}