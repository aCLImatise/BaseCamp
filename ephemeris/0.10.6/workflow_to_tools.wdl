version 1.0

task WorkflowToTools {
  input {
    Array[String] space_separated_list
    String? output_file
    String? panel_label
  }
  command <<<
    workflow-to-tools \
      ~{if defined(space_separated_list) then ("--workflow " +  '"' + space_separated_list + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(panel_label) then ("--panel_label " +  '"' + panel_label + '"') else ""}
  >>>
  parameter_meta {
    space_separated_list: "A space separated list of galaxy workflow description files in json format"
    output_file: "The output file with a yml tool list"
    panel_label: "The name of the panel where the tools will show up in Galaxy.If not specified: \"Tools from workflows\""
  }
}