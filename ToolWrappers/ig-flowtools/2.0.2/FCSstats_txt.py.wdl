version 1.0

task FCSstatsTxtpy {
  input {
    File? file_location_text
    File? name_output_file
    String get_txt_stats
  }
  command <<<
    FCSstats_txt_py \
      ~{get_txt_stats} \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_location_text: "File location for the text file."
    name_output_file: "Name of the output file."
    get_txt_stats: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}