version 1.0

task BasenjiFetchApppy {
  command <<<
    basenji_fetch_app_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}