version 1.0

task LynerClusterfrom {
  input {
    File var_file
  }
  command <<<
    lyner cluster_from \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}