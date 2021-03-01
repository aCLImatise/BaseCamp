version 1.0

task HcaUploadReport {
  input {
    String? env
    String? uuid
    File? output_file_name
  }
  command <<<
    hca upload report \
      ~{if defined(env) then ("--env " +  '"' + env + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(output_file_name) then ("--output_file_name " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    env: "Environment the upload area was created in (default is\\nbased on currently selected upload area)"
    uuid: "Full UUID of an upload area (default is based on\\ncurrently selected upload area)"
    output_file_name: "Name of output file (default is upload area name)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}