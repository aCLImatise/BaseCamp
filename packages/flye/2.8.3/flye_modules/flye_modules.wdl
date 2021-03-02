version 1.0

task Flyemodules {
  command <<<
    flye_modules
  >>>
  runtime {
    docker: "quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0"
  }
  output {
    File out_stdout = stdout()
  }
}