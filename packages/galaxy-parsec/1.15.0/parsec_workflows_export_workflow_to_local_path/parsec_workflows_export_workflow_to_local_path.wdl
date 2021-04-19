version 1.0

task ParsecWorkflowsExportWorkflowToLocalPath {
  input {
    Boolean? use_default_filename
    String file_local_path
    String options
  }
  command <<<
    parsec workflows export_workflow_to_local_path \
      ~{file_local_path} \
      ~{options} \
      ~{if (use_default_filename) then "--use_default_filename" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    use_default_filename: "If the use_default_name parameter is True, the\\nexported file will be saved as\\nfile_local_path/Galaxy-Workflow-%s.ga, where %s is\\nthe workflow name. If use_default_name is False,\\nfile_local_path is assumed to contain the full file\\npath including filename.  [default: True]"
    file_local_path: "Exports a workflow in JSON format to a given local path."
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}