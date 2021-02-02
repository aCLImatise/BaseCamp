version 1.0

task Extractpoppy {
  input {
    File? file_location_text
    String? list_populations_extract
    File? name_output_file
    String? what_to_populations
  }
  command <<<
    extractpop_py \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(list_populations_extract) then ("-p " +  '"' + list_populations_extract + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(what_to_populations) then ("-m " +  '"' + what_to_populations + '"') else ""}
  >>>
  parameter_meta {
    file_location_text: "File location for the text file."
    list_populations_extract: "List of populations to extract."
    name_output_file: "Name of the output file."
    what_to_populations: "What to do with the populations."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}