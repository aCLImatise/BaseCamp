version 1.0

task Workflowtotools {
  input {
    Array[String] space_separated_list
    File? output_file
    String? panel_label
    String options
  }
  command <<<
    workflow_to_tools \
      ~{options} \
      ~{if defined(space_separated_list) then ("--workflow " +  '"' + space_separated_list + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(panel_label) then ("--panel_label " +  '"' + panel_label + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    space_separated_list: "A space separated list of galaxy workflow description\\nfiles in json format"
    output_file: "The output file with a yml tool list"
    panel_label: "The name of the panel where the tools will show up in\\nGalaxy.If not specified: \\\"Tools from workflows\\\""
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}