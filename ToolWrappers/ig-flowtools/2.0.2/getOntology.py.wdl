version 1.0

task GetOntologypy {
  input {
    String? m
    String? y
    File? name_output_html
    File? path_supporting_directory
    File? path_sharetemplates_directory
  }
  command <<<
    getOntology_py \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(name_output_html) then ("-o " +  '"' + name_output_html + '"') else ""} \
      ~{if defined(path_supporting_directory) then ("-d " +  '"' + path_supporting_directory + '"') else ""} \
      ~{if defined(path_sharetemplates_directory) then ("-t " +  '"' + path_sharetemplates_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m: "marker queries."
    y: "marker queries."
    name_output_html: "Name of the output html file."
    path_supporting_directory: "Path to the html supporting directory"
    path_sharetemplates_directory: "Path to the /share/templates directory"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_html = "${in_name_output_html}"
  }
}