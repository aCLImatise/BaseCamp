version 1.0

task Mothur {
  input {
    String path_to_old_version
  }
  command <<<
    mothur \
      ~{path_to_old_version}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_to_old_version: "for example: yourusername$ which mothur"
  }
  output {
    File out_stdout = stdout()
  }
}