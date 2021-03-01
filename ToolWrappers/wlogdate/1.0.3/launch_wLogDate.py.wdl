version 1.0

task LaunchWLogDatepy {
  command <<<
    launch_wLogDate_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/wlogdate:1.0.3--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}