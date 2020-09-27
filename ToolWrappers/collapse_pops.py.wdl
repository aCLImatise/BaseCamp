version 1.0

task CollapsePopspy {
  input {
    File? file_location_text
    String? list_populations_collapse
    File? name_output_file
    String? what_collapse_populations
    String extract_pop
  }
  command <<<
    collapse_pops_py \
      ~{extract_pop} \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(list_populations_collapse) then ("-p " +  '"' + list_populations_collapse + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(what_collapse_populations) then ("-c " +  '"' + what_collapse_populations + '"') else ""}
  >>>
  parameter_meta {
    file_location_text: "File location for the text file."
    list_populations_collapse: "List of populations to collapse."
    name_output_file: "Name of the output file."
    what_collapse_populations: "What to collapse the populations in."
    extract_pop: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}