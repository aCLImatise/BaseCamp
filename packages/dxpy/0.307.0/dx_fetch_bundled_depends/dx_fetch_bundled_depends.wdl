version 1.0

task Dxfetchbundleddepends {
  command <<<
    dx_fetch_bundled_depends
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  output {
    File out_stdout = stdout()
  }
}