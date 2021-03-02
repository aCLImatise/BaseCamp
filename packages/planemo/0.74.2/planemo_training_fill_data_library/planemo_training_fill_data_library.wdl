version 1.0

task PlanemoTrainingFillDataLibrary {
  input {
    Directory? topic_name
    Directory? tutorial_name
    String? zeno_do_link
    File? data_types
    String tool_path
  }
  command <<<
    planemo training_fill_data_library \
      ~{tool_path} \
      ~{if defined(topic_name) then ("--topic_name " +  '"' + topic_name + '"') else ""} \
      ~{if defined(tutorial_name) then ("--tutorial_name " +  '"' + tutorial_name + '"') else ""} \
      ~{if defined(zeno_do_link) then ("--zenodo_link " +  '"' + zeno_do_link + '"') else ""} \
      ~{if defined(data_types) then ("--datatypes " +  '"' + data_types + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    topic_name: "Name (directory name) of the topic to create or in\\nwhich a tutorial should be created or updates\\n[required]"
    tutorial_name: "Name (directory name) of the tutorial to modify\\n[required]"
    zeno_do_link: "Zenodo URL with the input data"
    data_types: "YAML file with the correspondance between Zenodo\\nextension and Galaxy datatypes"
    tool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}