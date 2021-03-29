version 1.0

task MatUtils {
  command <<<
    matUtils
  >>>
  runtime {
    docker: "quay.io/biocontainers/usher:0.2.0--hfcd16c1_0"
  }
  output {
    File out_stdout = stdout()
  }
}