version 1.0

task Helperspy {
  command <<<
    helpers_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}