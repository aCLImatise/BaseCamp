version 1.0

task Versionpy {
  command <<<
    version_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}