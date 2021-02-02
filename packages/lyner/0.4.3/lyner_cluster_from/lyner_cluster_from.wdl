version 1.0

task LynerClusterfrom {
  input {
    File file
  }
  command <<<
    lyner cluster_from \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}