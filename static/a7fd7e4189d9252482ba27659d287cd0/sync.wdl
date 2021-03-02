version 1.0

task Sync {
  input {
    Boolean? data
    Boolean? file_system
    File? var_file
  }
  command <<<
    sync \
      ~{var_file} \
      ~{if (data) then "--data" else ""} \
      ~{if (file_system) then "--file-system" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "sync only file data, no unneeded metadata"
    file_system: "sync the file systems that contain the files"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}